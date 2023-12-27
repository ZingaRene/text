% Se introduz o operador "=>" para indicar o sentido do
% transvase de agua
  :- op(800, xfx, =>).

% ACCOES.
% Encher um recipiente.
  mov(est(X, Y), encher(c7, litros(Z)), est(7, Y)) :- X < 7, Z is 7-X.
  mov(est(X, Y), encher(c5, litros(Z)), est(X, 5)) :- Y < 5, Z is 5-Y.

% Esvaziar um recipiente.
  mov(est(X, Y), esvaziar(c7, litros(X)), est(0, Y)) :- X > 0.
  mov(est(X, Y), esvaziar(c5, litros(Y)), est(X, 0)) :- Y > 0.

% Transvase de agua de um recipiente a outro
% (ate que o recipiente desde o qual se transvasa esteja vazio):
% Do recipiente de 7 litros al de 5.
  mov(est(X, Y), transvasar(esvaziar_c7=>en_c5, litros(X)), est(0, V))
      :- 0 =< X, V is (X + Y), V =< 5.

% Do recipiente de 5 litros al de 7.
  mov(est(X, Y), transvasar(esvaziar_c5=>en_c7, litros(Y)), est(U, 0))
      :- 0 =< Y, U is (X + Y), U =< 7.

% Transvase de agua de um recipiente a outro
% (ate que o recipiente ao qual se transvasa esteja cheio):
% Do recipiente de 7 litros ao de 5.
  mov(est(X, Y), transvasar(c7=>encher_c5, litros(C)), est(U, 5))
      :- C is (5 - Y), C =< X, U is (X - C).

% Do recipiente de 5 litros al de 7.
  mov(est(X, Y), transvasar(c5=>encher_c7, litros(C)), est(7, V))
      :- C is (7 - X), C =< Y, V is (Y - C).

% AXIOMA DO ESPACO DE ESTADOS y formacao do plano.
 % plano(est(0, 0), []). % ESTADO INICIAL.
 % plano(E2, [A|Resto_plano]) :- plano(E1, Resto_plano), mov(E1, A, E2).

% OBJECTIVO.
  objectivo(est(4, _)).

% axioma do espa�o de estados
  resolve(E, []) :- objectivo(E).
  resolve(E, [A|Sol1]) :- mov(E, A, E1), resolve(E1, Sol1).



