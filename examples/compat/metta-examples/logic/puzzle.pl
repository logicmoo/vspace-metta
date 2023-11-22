
foo :-
%   /name, position, has sister/
    Employers=[_ , _ , _],
%    /Boris has sister/
    member([boris, _ , has_sister], Employers),
%    /cashier is the shortest and has no sister/
    nth1(1, Employers, [ _ , cashier, no_sister]),
%    /Semyon is higher than controller/
    nextto([ _ , controller, _], [semyon, _ , _ ], Employers),
    member([ivan, _ , _ ], Employers),
    member([_, supervisor, _], Employers),
    print(Employers), nl.
