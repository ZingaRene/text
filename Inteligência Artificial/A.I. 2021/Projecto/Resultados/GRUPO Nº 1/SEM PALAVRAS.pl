%fatos
progenitor(bela,ana).
progenitor(abilio,ana).
progenitor(ana,adelina).
progenitor(ana,pedro).
progenitor(abilio,lucas).
progenitor(lucas,pululo).
progenitor(lucas,bruna).
progenitor(bruna,pinto).
progenitor(pedro,lucas).

sexo(pinto,masculino).
sexo(abilio,masculino).
sexo(pedro,masculino).
sexo(pululo,masculino).
sexo(lucas,masculino).
sexo(lucas,masculino).
sexo(adelina,femenino).
sexo(ana,femenino).
sexo(bruna,femenino).
sexo(bela,femenino).

irma(X,Y):-
    progenitor(A,X),
    progenitor(A,Y),
    X\==Y,
    sexo(X,femenino).

irmao(X,Y):-
    progenitor(A,X),
    progenitor(A,Y),
    X\==Y,
    sexo(X,masculino).

pai(X,Y):-
    progenitor(X,Y),
    sexo(X,masculino).

mae(X,Y):-
    progenitor(X,Y),
    sexo(X,femenino).

filho(X,Y):-
    progenitor(Y,X).

primo(X,Y):-
    irmao(A,B),
    progenitor(A,X),
    progenitor(B,Y).

prima(X,Y):-
    irma(A,B),
    progenitor(A,X),
    progenitor(B,Y).

avo(X,Y):-
    progenitor(A,Y),
    progenitor(X,A),
    sexo(X,masculino).

avo(X,Y):-
    progenitor(A,Y),
    progenitor(X,A),
    sexo(X,femenino).

neto(X,Y):-
    progenitor(A,X),
    progenitor(Y,A).








