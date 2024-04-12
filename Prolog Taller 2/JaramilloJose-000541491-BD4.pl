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

padre(jorge, sergio).
padre(jorge, pedro).

padre(sergio, santiago).
padre(sergio, john).
padre(pedro, pepe).
padre(pedro, jose).

hijos(santiago).
hijos(john).
hijos(pepe).
hijos(jose).


hermanos(X, Y) :- padre(Z, X), padre(Z, Y), X\=Y.

primos(X, Y) :- hermanos(PadreX, PadreY), padre(PadreX, X), padre(PadreY, Y), PadreX \= PadreY.

sobrino(X, Tio) :- padre(Tio, Padre), padre(Padre, X).
