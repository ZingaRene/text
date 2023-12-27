gerou(domingos, jacinto).
gerou(kisuva, jacinto).
gerou(kisuva, garcia).
gerou(jacinto, simao).
gerou(jacinto, maraziola).
gerou(garcia, cristina).
gerou(garcia, levi).
gerou(maraziola, lucia).
gerou(levi, tomas).

mulher(kisuva).
mulher(garcia).
mulher(maraziola).
mulher(lucia).
mulher(cristina).


homem(domingos).
homem(jacinto).
homem(simao).
homem(levi).
homem(tomas).




mae(X,Y):-gerou(X,Y), mulher(X).
pai(X,Y):-gerou(X,Y), homem(X).
primos(X,Y):-gerou(Z,B),gerou(Z,A),gerou(B,X),gerou(A,Y),B\=A,X\=Y.
neto(Y,X):-gerou(X,A),gerou(A,Y).
bisavo(X,Y):-gerou(X,A),gerou(A,Z),gerou(Z,Y),homem(X).
bisavoa(X,Y):-gerou(X,B),gerou(B,F),gerou(F,Y),mulher(X).
filho(Y,X):-gerou(X,Y), homem(Y).
avo(X,Y):-gerou(X,A),gerou(A,Y).
irmaos(X,Y):-gerou(Z,X),gerou(Z,Y),X\=Y, homem(X).




