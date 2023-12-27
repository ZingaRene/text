mulher(felicia).
mulher(cristina).
mulher(lucia).

homem(alberto).
homem(palanga).
homem(simao).
homem(sergio).
homem(elielson).
homem(aldimiro).
homem(dedaldino).

mae(felicia).

pai(alberto).
pai(palanga).
pai(sergio).
pai(elielson).
pai(aldimiro).

gerou(felicia,palanga).
gerou(alberto,palanga).
gerou(alberto,elielson).
gerou(palanga,simao).
gerou(palanga,sergio).
gerou(sergio,lucia).
gerou(elielson,cristina).
gerou(elielson,aldimiro).
gerou(aldimiro,dedaldino).

irmao(palanga,elielson).
irmao(simao,sergio).
irmao(aldimiro,cristina).

irma(cristina,aldimiro).

filho(palanga,felicia).
filho(palanga,alberto).
filho(simao,palanga).
filho(sergio,palanga).
filho(lucia,sergio).
filho(elielson,alberto).
filho(cristina,elielson).
filho(aldimiro,elielson).
filho(dedaldino,aldimiro).

primo(simao,cristina).
primo(simao,aldimiro).
primo(sergio,cristina).
primo(sergio,aldimiro).

neto(simao,felicia).
neto(simao,alberto).
neto(sergio,alberto).
neto(aldimiro,alberto).
neto(dedaldino,elielson).

neta(cristina,alberto).
neta(lucia,palanga).

avo(felicia,simao).
avo(felicia,sergio).
avo(alberto,simao).
avo(alberto,sergio).
avo(alberto,cristina).
avo(alberto,aldimiro).
avo(palanga,lucia).
avo(elielson,dedaldino).

bisavo(felicia,lucia).
bisavo(alberto,lucia).
bisavo(alberto,dedaldino).


mae(X,Y) :- gerou(X,Y),mulher(X).
pai(X,Y) :- gerou(X,Y),homem(X).
primos(X,Y) :- irmao(B,C),gerou(B,X),gerou(C,Y),homem(X).
neto(X,Y) :- gerou(Y,B),gerou(B,X),homem(X).
bisavo(X,Y) :- gerou(X,B),gerou(B,C),gerou(C,Y),homem(X).
filho(X,Y) :- gerou(Y,X),homem(X).
avo(X,Y) :- gerou(B,Y),gerou(X,B),mulher(X).
irmao(X,Y) :- gerou(B,Y),gerou(B,X),homem(X).
avo(X,Y) :- gerou(B,Y),gerou(X,B),homem(X).







































