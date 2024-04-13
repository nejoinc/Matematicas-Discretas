capital(colombia, bogota).
capital(ecuador, quito).
capital(argentina, 'buenos aires').
capital('corea  del sur', seul).
capital('estados unidos', 'washington dc').




topicosyoutuber('elrubius', 'videojuegos').
topicosyoutuber('elrubius', 'minecraft').
topicosyoutuber('vegeta777', 'videojuegos').
topicosyoutuber('vegeta777', 'minecraft').
topicosyoutuber('holasoygerman', 'videojuegos').
topicosyoutuber('holasoygerman', 'vlogs').
topicosyoutuber('luisito comunica', 'viajes').
topicosyoutuber('luisito comunica', 'exploracion').
topicosyoutuber('zazza el italiano', 'viajes').
topicosyoutuber('zazza el italiano', 'documentacion').


topico('videojuegos').
topico('minecraft').
topico('vlogs').
topico('viajes').
topico('exploracion').
topico('documentacion').


% Base de datos de relaciones familiares
padre(jorge, sergio).
padre(jorge, pedro).
padre(esteban, olga).

padre(olga, lucia).
padre(olga, beatriz).
padre(sergio, santiago).
padre(sergio, john).
padre(pedro, pepe).
padre(pedro, jose).

% Se declaran los hijos
hijos(santiago).
hijos(john).
hijos(pepe).
hijos(jose).
hijos(beatriz).
hijos(lucia).

%Regla para determinar si dos personas son hermanos
hermanos(X, Y) :- padre(Z, X), padre(Z, Y), X\=Y.

%Regla para determinar si dos personas son primos
primos(X, Y) :- hermanos(PadreX, PadreY), padre(PadreX, X), padre(PadreY, Y), PadreX \= PadreY.

%Regla para determinar si una persona es sobrino de otra persona
sobrino(Sobrino, Tio) :- padre(Padre, Sobrino), hermanos(Padre, Tio).

%Regla para determinar si la persona es padre
espadre(X, Y) :- padre(X, Y).

% Regla para determinar si la persona es abuelo del nieto y papa del
% papa del nieto
abuelo(X, Y) :- padre(X, Z), espadre(Z, Y).

% Regla para consultar los nietos de un abuelo
nieto(X, Y) :- abuelo(Y, X).


%Ejercicio 3
%


hijo(X, Y) :- padre(Y, X).

primos(X, Y) :- hermanos(PadreX, PadreY), padre(PadreX, X), padre(PadreY, Y), X\=Y.

tio(X, Y) :- padre(Z, Y), hermanos(X, Z).
