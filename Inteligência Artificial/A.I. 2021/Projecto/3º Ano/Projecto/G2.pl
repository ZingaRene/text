pai(julio).
pai(martins).
pai(adao).
mae(joana).
mae(fortuna).
mae(alcidia).


pai(julio, fortuna).
pai(julio, martins).
pai(martins, antonio).
pai(martins, alcidia).
pai(adao, santos).
mae(joana, fortuna).
mae(fortuna, amadeu).
mae(fortuna, adao).
mae(alcidia, mendes).

neto(X, Y) :- pai(Y, A), mae(A, X).

neto(X, Y) :- mae(Y, F), mae(F, X).
neto(X, Y) :- mae(Y, A), pai(A, X).
filho(X, Y) :- pai(Y, X).
primos(X, Y) :- mae(F, X), pai(J, F), pai(J, M), pai(M, Y), F\=M.
primos(X, Y) :- pai(M, X), pai(J, M), pai(J, F), mae(F, Y), M\=F.

avo(X, Y) :- pai(X, A), mae(A, Y).

irmao(X, Y) :- pai(F, X), pai(F, Y), X\=Y.

bisavo(X, Y) :- pai(X, A), mae(A, J), pai(J, Y). 