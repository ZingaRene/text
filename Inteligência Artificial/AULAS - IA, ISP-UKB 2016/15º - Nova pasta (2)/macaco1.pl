% Accoes e movimentos
  move(s(P1, solo, P, T), andar(P1, P2), s(P2, solo, P, T)).
  move(s(P1, solo, P1, T), empurrar(P1, P2), s(P2, solo, P2, T)).
  move(s(P, solo, P, T), subir, s(P, sobre, P, T)).
  move(s(centro, sobre, centro, naotem),
    agarrar, s(centro, sobre, centro, tem)).

% Axioma do espaco de estados.
  
  objectivo(s(_,_,_,tiene)).  
  resolve(S, []) :- objectivo(S).
  resolve(S, [M|Sol1]) :- move(S, M, S1), resolve(S1, Sol1).