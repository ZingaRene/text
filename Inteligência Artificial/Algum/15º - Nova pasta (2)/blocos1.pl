%
% sucessor(Estado2, Estado1): o Estado2 e um sucessor do Estado1
% se, por exemplo, no Estado2 ha uma pilha, [Top1|pilha2], cuja
% cabeca, Top1 era o topo de uma pilha [Top1|pilha1] do Estado1 e
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

% Busca em profundidade con deteccao de ciclos.
% resolver(E,Sol):
% Resolver e verdadeiro se existe un plano que, partindo do
% estado inicial E, nos lleva a um estado objectivo.
% Por simplicidade, el parametro Sol armacena o plano
% em ordem inversa.
  resolver(E,Sol) :- profundidade([], E, Sol).

% resolver(Caminho_ant, E, Sol)
% O parametro Caminho_ant armacena a sequencia de estados
% visitados ate ao momento: E e o estado que estamos
% visitando; Sol devolve a solucao na forma de um caminho
% [E|Caminho_ant], quando E e um estado objectivo.
  profundidade(Caminho_ant, E,[E|Caminho_ant]) :- objectivo(E).
  profundidade(Caminho_ant, E, Sol1) :- sucessor(E1, E), \+(member(E1, Caminho_ant)),
      profundidade([E|Caminho_ant], E1, Sol1).