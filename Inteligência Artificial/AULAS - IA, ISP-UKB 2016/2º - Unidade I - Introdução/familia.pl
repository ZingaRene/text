homem(leonardo).
homem(leojr).
homem(claudio).
homem(agostinho).
homem(laurindo).
homem(castro).
homem(einstein).
homem(edivaldo).
mulher(celina1).
mulher(celina).
mulher(lidia).
mulher(julieta).
mulher(paula).
mulher(eva).
mulher(arelilga).
mulher(love1).
mulher(love2).
pai(leonardo, leojr).
pai(leojr, claudio).
pai(leojr, agostinho).
pai(leojr, castro).
pai(leojr, laurindo).
pai(leojr, lidia).
pai(leojr, celina).
pai(claudio, einstein).
pai(claudio, arelilga).
pai(agostinho, edivaldo).
mae(celina1, leojr).
mae(julieta, claudio).
mae(julieta, agostinho).
mae(julieta ,lidia).
mae(paula, castro).
mae(eva, celina).
mae(eva, laurindo).
mae(love1, einstein).
mae(love2, arelilga).

irmaos(X, Y):- pai(Z, X), pai(Z, Y), X \= Y.

primos(X, Y) :- pai(Z, X), pai(W, Y), irmaos(Z, W).




