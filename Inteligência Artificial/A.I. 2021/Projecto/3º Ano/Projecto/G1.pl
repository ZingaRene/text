pai(pedro).
pai(martins).

mae(adalia).
mae(barbosa). 
mae(simba).
mae(bruna).

pai(pedro, barbosa).
pai(pedro, simba).
pai(martins, buiti).

mae(adalia, barbosa).
mae(barbosa, adelino).
mae(barbosa, martins).
mae(simba, feca).
mae(simba, bruna).
mae(bruna, candieiro).



neto(X, Y) :- mae(Y, Z), mae(Z, X).
neto(X, Y) :- mae(Y, Z), pai(Z, X).

filho(X, Y) :- pai(Y, X).
filho(X, Y) :- mae(Y, X).

irmao(X, Y) :- pai(P, X),  pai(P, Y), X\=Y.
irmao(X, Y) :- mae(P, X),  mae(P, Y), X\=Y.
avó(X, Y) :- mae(X, Z), mae(Z, Y).
bisavó(X, Y) :- mae(X, Z), mae(Z, P), pai(P, Y).
bisavô(X, Y) :- pai(X, Z), mae(Z, P), mae(P, Y).
primos(X, Y) :- mae(Z, Y), pai(P, Z), pai(P, B), mae(B, X), Z\=B.