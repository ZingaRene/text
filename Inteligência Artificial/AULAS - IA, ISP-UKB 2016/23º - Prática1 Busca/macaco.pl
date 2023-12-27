% O estado inicial e possivel
possivel(s(porta, solo, janela, naotem)).

% Accoes e movimentos.
 move(s(P1, solo, P, T), andar(P1, P2), s(P2, solo, P, T)).%movimento do macaco de uma posição P1 para outra P2 através da acção andar
 move(s(P1, solo, P1, T), empurrar(P1, P2), s(P2, solo, P2, T)).%movimento do macaco de uma posição P1 para outra P2 através da acção
 move(s(P, solo, P, T), subir, s(P, sobre, P, T)).%Se o macaco e a caixa estiverem na mesma posição ele pode sair do solo para cima
 move(s(centro, sobre, centro, naotem), agarrar, s(centro, sobre, centro, tem)).%Agarrar a banana caso o macaco esteja em cima da caixa e esta esteja localizada no centro da sala.
% Axioma do espaco de estados.
%possivel(s(_,_,_,tem)).
possivel(S2) :- possivel(S1), move(S1, M, S2).
