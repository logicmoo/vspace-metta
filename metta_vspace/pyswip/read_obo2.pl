% ===========================================
% BEGIN OBO Loader
%   - Douglas R. Miles 2023
% ===========================================

% requires:  assert_OBO/1, track_load_into_file/2

load_obo(Filename) :-
  ( \+ atomic(Filename)
  -> resolve_filename(Filename, Resolved),
     load_obo(Resolved)
  ; file_exists_or_expand(Filename, List),
    maplist(load_obo, List)
  ),!.
load_obo(Filename):- load_obo1(Filename),!.

resolve_filename(Filename, Resolved) :-
  absolute_file_name(Filename, Resolved, [read(exists), extension(['']), file_errors(fail), solutions(first)]).

file_exists_or_expand(Filename, List) :-
  ( exists_file(Filename)
  -> List = [Filename]
  ; exists_directory(Filename)
  -> directory_file_path(Filename, "*.obo", Pattern),
     expand_file_name(Pattern, List)
  ; List = []
  ).


load_obo1(Filename) :-
 track_load_into_file(Filename,
  ((
      directory_file_path(Directory, BaseName, Filename),
      file_name_extension(Id, _, BaseName),
      Type = 'OntologyFile',
      assert_OBO(id_type(Id,Type)),
      nb_setval(obo_id,Id),nb_setval(obo_type,Type),
      assert_OBO(pathname(Id,Filename)),!,
      assert_OBO(basename(Id,BaseName)),!,
      assert_OBO(directory(Id,Directory)),!,
      setup_call_cleanup(open(Filename, read, Stream),
        process_stream_repeat(Stream),
        close(Stream))))),
   fb_stats.


process_stream_repeat(Stream):-
  repeat,
   read_line_to_string(Stream, Line),
   nb_current(obo_type,Type),
   nb_current(obo_id, Id),
   (Line == end_of_file -> true;
     ((((should_show_data(_) -> writeln(Line); true),
        normalize_space(chars(Chars),Line))),
        Chars\==[],
        once(process_obo_chars(Type, Chars, Id)),
      ((at_end_of_stream(Stream);reached_file_max) -> ! ; fail))).


into_rest(Rest,RestChars,RestStr):-
  string_chars(Str,Rest),
  normalize_space(chars(RestChars),Str),
  string_chars(RestStr,RestChars).

obo_chars(Atom,[C|Chars]):- C==' ',!, obo_chars(Atom,Chars).
obo_chars(Atom,Chars):- atom_chars(Atom,Chars).

process_obo_chars(_, ['['|Chars], _):- append(Left,[']'],Chars), !,
  obo_chars(Type,Left),
  nb_setval(obo_type,Type).

process_obo_chars(Type, Chars, _):-
  get_key(Key,Chars,Rest),Key == id,
  into_rest(Rest,RestChars,_RestStr),
  obo_chars(Id,RestChars), assert_OBO(id_type(Id,Type)),
  nb_setval(obo_id,Id),nb_setval(obo_type,Type), !.

process_obo_chars(Type, Chars, Id):-
    get_key(Key,Chars,Rest),
    into_rest(Rest,RestChars,RestStr),
    process_obo_rest_line(Type,Id,Key,RestChars,RestStr),!.

process_obo_rest_line(Type,Id,Reln,Rest,_):- Reln = id,
   get_some_items([item(Id)],Rest,[]),!, assert_OBO(id_type(Id,Type)),!.
process_obo_rest_line(_Type,Id,Ref,_Chars,S):-
   member(Ref,[name,comment]),
   assert_OBO(ontology_info(Ref,Id,S)),!.

process_obo_rest_line(Type,Id,Reln,Chars,_):-  Reln = relationship,!,
  must_det_ll((
   key_like_string(KeyLike,Chars,Rest),
    obo_chars(Key,KeyLike),
    into_rest(Rest,RestChars,RestStr),
    process_obo_rest_line(Type,Id,Key,RestChars,RestStr))).

process_obo_rest_line(_Type,Id,Ref,Chars,_):-
    \+ (member(C,Chars),member(C,['!','[','"'])),
    ( \+ member(' ',Chars)-> obo_chars(S,Chars);string_chars(S,Chars)),
    assert_OBO(ontology_info(Ref,Id,S)),!.

process_obo_rest_line(_Type,Id,is_a,Chars,Str):-
    member('!',Chars), atomic_list_concat([L,R],'!',Str),
    normalize_space(atom(T),L),normalize_space(string(N),R),
    assert_OBO(obo_is_a(Id,T)), assert_OBO(obo_name(T,N)),!.

process_obo_rest_line(_Type,Id,Reln,Chars,_):-
    get_some_items(List,Chars,[]),
    maplist(arg(1),List,Args),
    Assert=..[Reln,Id|Args],
    assert_OBO(Assert),!.

%process_obo_rest_line(Type,Id,Miss,Rest,Str):- pp_fb(process_obo_rest_line(Type,Id,Miss,Rest,Str)),!.

get_key(Key)-->key_like_string(Chars),[':'],{obo_chars(Key,Chars)},!.
get_some_items(I)--> [' '],!,get_some_items(I).
get_some_items(_,[],[]):-!.
get_some_items([H|T])-->get_one_item(H),get_some_items(T). get_some_items([])-->[].
get_one_item(I)--> [' '],!,get_one_item(I).
get_one_item(quoted(Item))-->[x,s,d,':'],symbol_or_url(Chars),{obo_chars(Item,[x,s,d,':'|Chars])}.
get_one_item(quoted(Item))-->[h,t,t,p],symbol_or_url(Chars),{string_chars(Item,[h,t,t,p|Chars])}.
get_one_item(quoted(Item))-->[f,t,p],symbol_or_url(Chars),{string_chars(Item,[f,t,p|Chars])}.
get_one_item(quoted(Item))-->['"'],string_until_end_quote(Chars),{string_chars(Item,Chars)}.
get_one_item(named(Item))-->['!'],whs,named_like_string(Chars),{obo_chars(Item,Chars)}.
get_one_item(bracketed(Items))-->['['],whs,items(Items),whs,[']'].
get_one_item(bracketed(Items))-->['{'],whs,items(Items),whs,['}'].
%get_one_item(item(Item))--> whs,key_like_string(Chars),whs,{Chars \==[], obo_chars(Item,Chars)}.
get_one_item(keyword(Keyword))-->whs,id_like_string(Chars),{Chars\==[]},whs,{obo_chars(Keyword,Chars)}.
get_one_item(text(Text))-->named_like_string(Chars),{string_chars(Text,Chars)}.
get_one_item(text(Text),[H|T],[]):- ground([H|T]),string_chars(Text,[H|T]),!.
items([Item|Rest])-->item(Item),whs,[','],whs,items(Rest).
items([Item])-->item(Item),!.
item(Item)-->symbol_or_url(Chars),{Chars\==[],obo_chars(Item,Chars)}.
key_like_string([H|T])-->[H],{\+member(H,[':',' ','\t','\n'])},key_like_string(T).
key_like_string([])-->[].
id_like_string([H|T])-->[H],{\+member(H,['!',' ','\t','\n',',','[',']','{','}','"'])},id_like_string(T).
id_like_string([])-->[].
symbol_or_url([H|T])-->[H],{\+member(H,[',','[',']','"',' '])},symbol_or_url(T).
symbol_or_url([])-->[].
string_until_end_quote([])-->['"'],!.
string_until_end_quote([H|T])-->(['\\',H];[H]),!,string_until_end_quote(T).
named_like_string([H|T])-->[H],{\+member(H,['\n'])},named_like_string(T).
named_like_string([])-->[].
whs-->[''],!,whs. whs-->[].





