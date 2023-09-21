%;`$then`, `$else` should be of `Atom` type to avoid evaluation
%; and infinite cycle in inference
metta_type('&self',if,[ ->, 'Bool','Atom','Atom',_]).
metta_defn('&self',[if,'True',A,_],A).
metta_defn('&self',[if,'False',_,A],A).
metta_type('&self','Error',[->,'Atom','Atom','ErrorType']).
metta_defn('&self',['if-non-empty-expression',A,B,C],[ chain,
                                                       [ eval,
                                                         ['get-metatype',A]],
                                                       D,
                                                       [ eval,
                                                         [ 'if-equal', D,'Expression',
                                                           [ eval,
                                                             [ 'if-equal',          A, [], C, B]],
                                                           C]]]).
metta_defn('&self',[ 'if-decons', A,B,C,D,
                     E],[ eval,
                          [ 'if-non-empty-expression',
                            A,
                            [ chain,
                              [decons,A],
                              F,
                              [ match,
                                F,
                                [B,C], D,E]],
                            E]]).
metta_defn('&self',['if-empty',A,B,C],[ eval,
                                        [ 'if-equal', A,'Empty',B,C]]).
metta_defn('&self',['if-error',A,B,C],[ eval,
                                        [ 'if-decons', A,D,_,
                                          [ eval,
                                            [ 'if-equal', D,'Error',B,C]],
                                          C]]).
metta_defn('&self',['return-on-error',A,B],[ eval,
                                             [ 'if-empty', A,'Empty',
                                               [ eval,
                                                 ['if-error',A,A,B]]]]).
metta_defn('&self',[car,A],[ eval,
                             [ 'if-decons', A,B,_,B,
                               [ 'Error',
                                 [car,A],
                                 '$STRING'("car expects a non-empty expression as an argument")]]]).
metta_defn('&self',[switch,A,B],[ chain,
                                  [decons,B],
                                  C,
                                  [ eval,
                                    ['switch-internal',A,C]]]).
metta_defn('&self',[ 'switch-internal',
                     A,
                     [ [B,C],
                       D]],[ match, A,B,C,
                             [ eval,
                               [switch,A,D]]]).
metta_defn('&self',[subst,A,B,C],[ match, A,B,C,
                                   [ 'Error',
                                     [subst,A,B,C],
                                     '$STRING'("subst expects a variable as a second argument")]]).
metta_defn('&self',[reduce,A,B,C],[ chain,
                                    [eval,A],
                                    D,
                                    [ eval,
                                      [ 'if-error', D,D,
                                        [ eval,
                                          [ 'if-empty',
                                            D,
                                            [ eval,
                                              [subst,A,B,C]],
                                            [ eval,
                                              [reduce,D,B,C]]]]]]]).
metta_defn('&self',['type-cast',A,B,C],[ chain,
                                         [ eval,
                                           ['get-type',A,C]],
                                         D,
                                         [ eval,
                                           [ switch,
                                             [D,B],
                                             [ [ ['%Undefined%',E],
                                                 A],
                                               [ [E,'%Undefined%'],
                                                 A],
                                               [ [B,E],
                                                 A],
                                               [ E,
                                                 ['Error',A,'BadType']]]]]]).
metta_defn('&self',['is-function',A],[ chain,
                                       [ eval,
                                         ['get-metatype',A]],
                                       B,
                                       [ eval,
                                         [ switch,
                                           [A,B],
                                           [ [ [C,'Expression'],
                                               [ chain,
                                                 [ eval,
                                                   [car,A]],
                                                 D,
                                                 [ match, D,->,'True','False']]],
                                             [C,'False']]]]]).
metta_defn('&self',[interpret,A,B,C],[ chain,
                                       [ eval,
                                         ['get-metatype',A]],
                                       D,
                                       [ eval,
                                         [ switch,
                                           [B,D],
                                           [ [ ['Atom',_],
                                               A],
                                             [ [D,D],
                                               A],
                                             [ [E,'Variable'],
                                               A],
                                             [ [E,'Symbol'],
                                               [ eval,
                                                 ['type-cast',A,B,C]]],
                                             [ [E,'Grounded'],
                                               [ eval,
                                                 ['type-cast',A,B,C]]],
                                             [ [E,'Expression'],
                                               [ eval,
                                                 ['interpret-expression',A,B,C]]]]]]]).
metta_defn('&self',['interpret-expression',A,B,C],[ eval,
                                                    [ 'if-decons', A,D,_,
                                                      [ chain,
                                                        [ eval,
                                                          ['get-type',D,C]],
                                                        E,
                                                        [ chain,
                                                          [ eval,
                                                            ['is-function',E]],
                                                          F,
                                                          [ match, F,'True',
                                                            [ chain,
                                                              [ eval,
                                                                ['interpret-func',A,E,C]],
                                                              G,
                                                              [ eval,
                                                                [call,G,B,C]]],
                                                            [ chain,
                                                              [ eval,
                                                                ['interpret-tuple',A,C]],
                                                              G,
                                                              [ eval,
                                                                [call,G,B,C]]]]]],
                                                      [ eval,
                                                        ['type-cast',A,B,C]]]]).
metta_defn('&self',['interpret-func',A,B,C],[ eval,
                                              [ 'if-decons', A,D,E,
                                                [ chain,
                                                  [ eval,
                                                    [interpret,D,B,C]],
                                                  F,
                                                  [ eval,
                                                    [ 'return-on-error',
                                                      F,
                                                      [ eval,
                                                        [ 'if-decons', B,_,G,
                                                          [ chain,
                                                            [ eval,
                                                              [ 'interpret-args', A,E,G,
                                                                C]],
                                                            H,
                                                            [ eval,
                                                              [ 'return-on-error',
                                                                H,
                                                                [cons,F,H]]]],
                                                          [ 'Error', B,'$STRING'("Function type expected")]]]]]],
                                                [ 'Error',
                                                  A,
                                                  '$STRING'("Non-empty expression atom is expected")]]]).
metta_defn('&self',[ 'interpret-args', A,B,C,D],[ match,
                                                  B,
                                                  [],
                                                  [ match,
                                                    C,
                                                    [_],
                                                    [],
                                                    ['Error',A,'BadType']],
                                                  [ eval,
                                                    [ 'if-decons', B,E,F,
                                                      [ eval,
                                                        [ 'if-decons', C,G,H,
                                                          [ chain,
                                                            [ eval,
                                                              [interpret,E,G,D]],
                                                            I,
                                                            [ eval,
                                                              [ 'if-equal', I,E,
                                                                [ eval,
                                                                  [ 'interpret-args-tail', A,I,F,
                                                                    H,D]],
                                                                [ eval,
                                                                  [ 'return-on-error',
                                                                    I,
                                                                    [ eval,
                                                                      [ 'interpret-args-tail', A,I,F,
                                                                        H,D]]]]]]],
                                                          ['Error',A,'BadType']]],
                                                      [ 'Error',
                                                        [ 'interpret-atom', A,B,C,
                                                          D],
                                                        '$STRING'("Non-empty expression atom is expected")]]]]).
%; check that head was changed otherwise Error or Empty in the head
%; can be just an argument which is passed by intention
metta_defn('&self',[ 'interpret-args-tail', A,B,C,D,
                     E],[ chain,
                          [ eval,
                            [ 'interpret-args', A,C,D,E]],
                          F,
                          [ eval,
                            [ 'return-on-error',
                              F,
                              [cons,B,F]]]]).
metta_defn('&self',['interpret-tuple',A,B],[ match,
                                             A,
                                             [],
                                             A,
                                             [ eval,
                                               [ 'if-decons', A,C,D,
                                                 [ chain,
                                                   [ eval,
                                                     [interpret,C,'%Undefined%',B]],
                                                   E,
                                                   [ chain,
                                                     [ eval,
                                                       ['interpret-tuple',D,B]],
                                                     F,
                                                     [cons,E,F]]],
                                                 [ 'Error',
                                                   ['interpret-tuple',A,B],
                                                   '$STRING'("Non-empty expression atom is expected as an argument")]]]]).
metta_defn('&self',[call,A,B,C],[ chain,
                                  [eval,A],
                                  D,
                                  [ eval,
                                    [ 'if-empty', D,A,
                                      [ eval,
                                        [ 'if-error', D,D,
                                          [ eval,
                                            [interpret,D,B,C]]]]]]]).
% 1,264,919 inferences, 0.139 CPU in 0.140 seconds (99% CPU, 9074539 Lips)
% (=  metta_prelude.metta 0)

