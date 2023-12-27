homem(sebastiao).
homem(pinto).
homem(marcelo).
homem(manuel).
homem(sabalo).
homem(jose).
mulher(patricia).
mulher(fina).
mulher(flor).
mulher(liana).

pai(sebastiao,pinto).
pai(pinto,sabalo).
pai(pinto,fina).

mae(patricia,pinto).
mae(patricia,flor).
mae(fina,jose).
mae(flor,manuel).
mae(flor,liana).
mae(liana,marcelo).

filho(X,Y):-
    mae(Y,X).

primos(X,Y) :-
    mae(F,X),
    mae(P,F),
    mae(P,T),
    pai(T,Y).

primos(Y,X):-
    mae(F,X),
    mae(P,F),
    mae(P,S),
    pai(S,Y).



irma(X,Y) :- pai(T,X), pai(T,Y), X\=Y.

irmao(A,B):- mae(F,A),mae(F,B), A\=B.

netos(X,Y):-
    pai(P,X),
    mae(Y,P).


netos(X,Y):-
    mae(F,X),
    mae(Y,F).

neto(X,Y):-
    pai(P,X),
    pai(Y,P).

avo(X,Y) :-
    pai(X,P),
    pai(P,Y).



avo(X,Y) :-
 mae(X,B),
  mae(B,Y).


bisavo(Y,X):-
     mae(Y,P),
     pai(P,F),
     mae(F,X).
