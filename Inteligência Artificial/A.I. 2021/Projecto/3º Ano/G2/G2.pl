pai(julio1).
pai(jose).
pai(bento1).
pai(simao).

mae(silvana).

pai(julio1, jose).
pai(julio1, bento1).
pai(bento1, buco).
pai(bento1,julio2).
pai(buco, francisco).
pai(jose, simao).
pai(jose, bento2).
pai(simao, ana).

mae(silvana, bento1).




neto(X, Y) :- mae(Y, Z), pai(Z, X).
neto(X, Y) :- pai(Y, Z), pai(Z, X).

filho(X, Y) :- pai(Y, X).

irmao(X, Y) :- pai(P, X),  pai(P, Y), X\=Y.

avo(X, Y) :- mae(X, Z), pai(Z, Y).

bisavo(X, Y) :- mae(X, Z), pai(Z, P), pai(P, Y).

primos(X, Y) :- pai(P, Z), pai(P, B), pai(B, X), pai(Z,Y), Z\=B.
