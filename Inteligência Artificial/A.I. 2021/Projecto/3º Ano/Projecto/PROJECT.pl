homem(jose).
homem(santos).
homem(andrade).
homem(alfredo).
homem(francisco).
homem(nguima).

mulher(mircia).
mulher(maria).
mulher(cristina).
mulher(ilda).

pai(jose,santos).
pai(santos,andrade).
pai(santos,cristina).

mae(mircia,santos).
mae(mircia,maria).
mae(maria,alfredo).
mae(maria,ilda).
mae(ilda,nguima).
mae(cristina,francisco).

filho(X,Y):- pai(Y,X), homem(X).
filho(X,Y):- mae(Y,X), homem(X).

filha(X,Y):- pai(Y,X), mulher(X).
filha(X,Y):- mae(Y,X), mulher(X).

irmao(X,Y):- pai(P,Y), pai(P,X), homem(X), X\=Y.
irmao(X,Y):- mae(M,Y), mae(M,X), homem(X), X\=Y.

irma(X,Y):- pai(P,Y), pai(P,X), mulher(X), X\=Y.
irma(X,Y):- mae(M,Y), mae(M,X), mulher(X), X\=Y.

avom(X,Y):- pai(X,Z), pai(Z,Y).
avom(X,Y):- pai(X,Z), mae(Z,Y).
avof(X,Y):- mae(X,Z), mae(Z,Y), mulher(X).
avof(X,Y):- mae(X,Z), pai(Z,Y), mulher(X).

neto(X,Y):- pai(Z,X), filho(Z,Y), homem(X).
neto(X,Y):- pai(Z,X), filha(Z,Y), homem(X).
neto(X,Y):- mae(Z,X), filho(Z,Y), homem(X).
neto(X,Y):- mae(Z,X), filha(Z,Y), homem(X).

neta(X,Y):- pai(Z,X), filho(Z,Y), mulher(X).
neta(X,Y):- pai(Z,X), filha(Z,Y), mulher(X).
neta(X,Y):- mae(Z,X), filho(Z,Y), mulher(X).
neta(X,Y):- mae(Z,X), filha(Z,Y), mulher(X).


bisavo(X,Y):- mae(X,F), pai(F,P), mae(P,Y).

primo(X,Y):- pai(P,W), pai(P,Z), pai(Z,X), mae(W,Y),W\=Z.
primo(X,Y):- pai(P,W), pai(P,Z), mae(Z,X), pai(W,Y),W\=Z.
primo(X,Y):- mae(P,W), mae(P,Z), pai(Z,X), mae(W,Y),W\=Z.
primo(X,Y):- mae(P,W), mae(P,Z), mae(Z,X), pai(W,Y),W\=Z.
