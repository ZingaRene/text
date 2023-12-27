% Acções ou Movimentos.
%
% sucessor(Estado2, Estado1): o Estado2 é um sucessor do Estado1
% se, por exemplo, no Estado2 há uma pilha, [Top1|pilha2], cuja
% cabeca, Top1 era o topo de uma pilha [Top1|pilha1] do Estado1 é
% que passou a ser o topo de uma pilha2 do Estado1.
%
% Os seguintes constituem movimentos legais.
  sucessor([Pilha1,[Top1|Pilha2],Pilha3], [[Top1|Pilha1],Pilha2,Pilha3]).
  sucessor([Pilha1,Pilha2,[Top1|Pilha3]], [[Top1|Pilha1],Pilha2,Pilha3]).
  sucessor([[Top2|Pilha1],Pilha2,Pilha3], [Pilha1,[Top2|Pilha2],Pilha3]).
  sucessor([Pilha1,Pilha2,[Top2|Pilha3]], [Pilha1,[Top2|Pilha2],Pilha3]).
  sucessor([[Top3|Pilha1],Pilha2,Pilha3], [Pilha1,Pilha2,[Top3|Pilha3]]).
  sucessor([Pilha1,[Top3|Pilha2],Pilha3], [Pilha1,Pilha2,[Top3|Pilha3]]).

% Estado objectivo.
  objectivo(Estado) :- member([a,b,c], Estado).

% Axioma do espaco de estados:
  resolver(E,[E]) :- objectivo(E).
  resolver(E,[E|Sol1]) :- sucessor(E1, E), resolver(E1, Sol1).
