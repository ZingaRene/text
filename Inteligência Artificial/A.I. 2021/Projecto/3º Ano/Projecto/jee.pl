homem(jonas).
homem(jelsom).
homem(jose).
homem(katchama).
homem(felix).
homem(evaristo).
mulher(teresa).
mulher(lutukuta).

mulher(bela).
mulher(ristina).

pai(jonas, bela).
pai(jonas,jelsom).
pai(jelsom, katchama).
pai(jelsom, jose).
pai(katchama, lutukuta).

mae(teresa, jelsom).
mae(bela, felix).
mae(bela,cristina).
mae(cristina, evaristo).

filho(X,Y) :-pai(Y,X).
filho(X,Y) :- mae(Y,X).

irmao(X,Y) :-pai(P,X),pai(P,Y),X\=Y.
irmao(X,Y) :-mae(M,X),mae(M,Y),X\=Y.

irma(X,Y) :-mae(M,X),mae(M,Y),X\=Y.



neto(X,Y) :-mae(Y,Z),pai(Z,X).
neto(X,Y) :-pai(Y,Z),mae(Z,X).

avo(X,Y) :-mae(X,Z),pai(Z,Y).
avo(X,Y) :-pai(X,Z),pai(Z,Y).


neto(X,Y) :-pai(Y,Z),pai(Z,X) .


primo(Y,X):-mae(M,X), pai(J,M),pai(J,F), pai(F,Y),M\=F.
primo(X,Y):- mae(M,X), mae(J,M),pai(J,F), pai(F,Y).

bisavo(X,Y):-pai(X,D),pai(D,A),pai(A,Y).
bisavo(X,Y):-pai(X,D),mae(D,A),mae(A,Y).
bisavo(X,Y):-mae(X,D),pai(D,A),pai(A,Y).





