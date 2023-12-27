f2(X, 0) :- X < 3, !. % regra 1
f2(X, 2) :- 3 =< X, X < 6, !. % regra 2
f2(X, 4) :- 6 =< X.  % regra 3
