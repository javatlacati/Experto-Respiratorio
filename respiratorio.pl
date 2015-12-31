%el usuario mete alguno de los síntomas q tiene 
%y le va a presentar la posible enfermedad q podría tener

sintoma('Inflamación unos días').
sintoma('Tos persistente').
sintoma('Dificultades respiratorias').
sintoma('Ruidos silbantes').
sintoma('Tos seca').
sintoma('Respiración agitada').
sintoma('Tos').
sintoma('Fiebre').
sintoma('Rechazo de alimentos').
sintoma('Decaimiento').
sintoma('Gripe').
sintoma('Tos persistente').
sintoma('Tos intensa').
sintoma('Dolor de cabeza').
sintoma('Dolor en el cuerpo').
sintoma('Estornudos').
sintoma('Malestar general').
sintoma('Falta de apetito').
sintoma('Congestión nasal').
sintoma('Flujo nasal').
sintoma('Dolor de garganta').
sintoma('Lagrimeo').
sintoma('Dolor de dientes').
sintoma('Dolor en el pecho').

enfermedad(asma,Sintomas):-member(Sintomas,['Inflamación unos días ', 'Tos persistente', 'Dificultades respiratorias', 'Ruidos silbantes', 'Tos seca']).
enfermedad(bronconeumonia,Sintomas):-member(Sintomas,['Respiración agitada', 'Tos', 'Fiebre', 'Rechazo de alimentos', 'Decaimiento']).
enfermedad(bronquitis,Sintomas):-member(Sintomas,['Gripe', 'Fiebre', 'Dificultades respiratorias', 'Respiración agitada', 'Dolor en el pecho', 'Tos persistente', 'Tos intensa']).
enfermedad(sars,Sintomas):-member(Sintomas,['Fiebre', 'Dolor de cabeza', 'Dolor en el cuerpo', 'Tos seca']).
enfermedad(gripe,Sintomas):-member(Sintomas,['Fiebre', 'Tos', 'Estornudos', 'Malestar general', 'Falta de apetito']).
enfermedad(rinofaringitis,Sintomas):-member(Sintomas,['Fiebre', 'Congestión nasal', 'Dolor de garganta','Tos seca', 'Flujo nasal']).
enfermedad(sinusitis,Sintomas):-member(Sintomas,['Dolor de cabeza', 'Dolor de dientes', 'Dificultades respiratorias', 'Flujo nasal']).

busca_enfermedad(_,[]):-!.
busca_enfermedad(Padecimiento,[X|T]):-
	enfermedad(Padecimiento,X), busca_enfermedad(Padecimiento,T).

sintomas([]):-!.
sintomas([X|T]):-
	busca_enfermedad(Padecimiento,[X|T]),
	write('Su padecimiento es '),
	write(Padecimiento),nl,
	sintomas([T]).

indicaciones:-write('Escriba los sintomas del paciente de la siguiente manera \nsintomas([\'Fiebre\']).'),nl.
