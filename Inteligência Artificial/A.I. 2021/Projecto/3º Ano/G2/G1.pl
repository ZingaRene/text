pai(jose).
pai(sandro).
pai(carvalho).
pai(vidal).

pai(jose, barbosa).
pai(jose, sandro).
pai(sandro, filipe).
pai(sandro, carvalho).
pai(vidal, jelson).
pai(carvalho, silva).
mae(maria).
mae(barbosa).

mae(maria, barbosa).
mae(barbosa, teodoro).
mae(barbosa, vidal).

filho(X, Y) :- pai(Y, X).
filho(X, Y) :- mae(Y, X).
primos(X, Y) :- mae(B, X),pai(P, B), pai(P, Z), pai(Z, Y),  Z\=B.


neto(X, Y) :- pai(Y, B), mae(B, X).

neto(X, Y) :- pai(Y, Z), pai(Z, X).


avô(X, Y) :- pai(X, Z), pai(Z, Y).

bisavô(X, Y) :- pai(X, Z), pai(Z, P), pai(P, Y).
bisavó(X, Y) :- mae(X, Z), mae(Z, P), pai(P, Y).