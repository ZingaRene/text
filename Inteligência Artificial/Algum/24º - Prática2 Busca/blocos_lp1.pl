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

% expandir --> verdadeiro se CaminhoExp e uma lista de caminhos
% obtidos expandindo o ultimo no
     %expandir([No|Caminho], CaminhoExp) :- bagof([NoNovo, No|Caminho], 
     %     (sucessor(NoNovo, No), \+member(NoNovo, [No|Caminho])),
     %     CaminhoExp).

% algoritmo
  resolver(Inicial, Sol) :- larguraprimeiro([[Inicial]], Sol).
  
  larguraprimeiro([[No|Caminho]|_], [No|Caminho]) :- objectivo(No).

  larguraprimeiro([[N|Caminho]|Caminhos], Sol) :- 
          bagof([M,N|Caminho],
              (sucessor(M, N), \+member(M, [N|Caminho])),
              CaminhoNovo), % CaminhoNovo --> extensoes de [N|Caminho]
          append(Caminhos, CaminhoNovo, Caminhos1),!,
          larguraprimeiro(Caminhos1, Sol);
	  larguraprimeiro(Caminhos, Sol). % Caso N nao tenha sucessores
