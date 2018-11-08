%----------------------------------------------------------------%

present_verb('see','ver').
present_verb('seem','parecer').
present_verb('show','mostrar').
present_verb('start','empezar').
present_verb('take','tomar').
present_verb('talk','hablar').
present_verb('tell','contar').
present_verb('think','pensar').
present_verb('try','intentar').
present_verb('trun','girar').
present_verb('use','usar').
present_verb('want','querer').
present_verb('work','trabajar').


%----------------------------------------------------------------%
%----------------------------------------------------------------%
%----------------------------------------------------------------%
%----------------------------------------------------------------%

%core

oracion(S0,S,TIME,T0,T):- 
    sintagma_nominal(NUM,_,PERS,S0,S1,T0,T1),
    sintagma_verbal(TIME,NUM,_,PERS,S1,S,T1,T).

oracion(S0,S,TIME,T0,T):- 
    pronombre(NUM,GEN,PERS,S0,S1,T0,T1), 
    sintagma_verbal(TIME,NUM,GEN,PERS,S1,S,T1,T).

%---------------------------------------------------

sintagma_nominal(NUM,GEN,PERS,S0,S,T0,T):-
    determinante(NUM,GEN,PERS,S0,S1,T0,T1),
    nombre(NUM,GEN,S1,S,T1,T).

sintagma_nominal(NUM,GEN,PERS,S0,S,T0,T):-
    determinante(NUM,GEN,PERS,S0,S1,T0,T1),
    nombre(NUM,GEN,S1,S2,T2,T),
    adjetivo(NUM,GEN,S2,S,T1,T2).

%---------------------------------------------------------------

sintagma_verbal(TIME,NUM,_,PERS,S0,S,T0,T):-
    verbo(TIME,NUM,PERS,S0,S,T0,T).
sintagma_verbal(TIME,NUM,_,PERS,S0,S,T0,T):-
    verbo(TIME,NUM,PERS,S0,S1,T0,T1),
    sintagma_nominal(_,_,_,S1,S,T1,T).

%---------------------------------------------------------------

determinante(singular,masculino,tercera,['el'|S],S,['the'|T],T).
determinante(singular,femenino,tercera,['la'|S],S,['the'|T],T).
determinante(plural,masculino,tercera,['los'|S],S,['the'|T],T).
determinante(plural,femenino,tercera,['las'|S],S,['the'|T],T).

%---------------------------------------------------------------

nombre(singular,masculino,['hombre'|S],S,['man'|T],T).
nombre(plural,masculino,['hombres'|S],S,['men'|T],T).
nombre(singular,femenino,['manzana'|S],S,['apple'|T],T).
nombre(plural,femenino,['manzanas'|S],S,['apples'|T],T).
nombre(singular,femenino,['área'|S],S,['area'|T],T).
nombre(plural,femenino,['áreas'|S],S,['areas'|T],T).
nombre(singular,masculino,['libro'|S],S,['book'|T],T).
nombre(plural,masculino,['libros'|S],S,['books'|T],T).
nombre(singular,masculino,['negocio'|S],S,['business'|T],T).
nombre(plural,masculino,['negocios'|S],S,['businesses'|T],T).
nombre(singular,masculino,['caso'|S],S,['case'|T],T).
nombre(plural,masculino,['casos'|S],S,['cases'|T],T).
nombre(singular,masculino,['niño'|S],S,['children'|T],T).
nombre(singular,femenino,['niña'|S],S,['child'|T],T).
nombre(plural,masculino,['niños'|S],S,['children'|T],T).
nombre(plural,femenino,['niños'|S],S,['children'|T],T).
nombre(singular,femenino,['compañia'|S],S,['company'|T],T).
nombre(plural,femenino,['companiñas'|S],S,['companies'|T],T).
nombre(singular,masculino,['país'|S],S,['country'|T],T).
nombre(plural,masculino,['paises'|S],S,['countries'|T],T).
nombre(singular,masculino,['día'|S],S,['day'|T],T).
nombre(plural,masculino,['días'|S],S,['days'|T],T).
nombre(singular,masculino,['ojo'|S],S,['eye'|T],T).
nombre(plural,masculino,['ojos'|S],S,['eyes'|T],T).
nombre(singular,masculino,['hecho'|S],S,['fact'|T],T).
nombre(plural,masculino,['hechos'|S],S,['facts'|T],T).
nombre(singular,femenino,['familia'|S],S,['family'|T],T).
nombre(plural,femenino,['familias'|S],S,['families'|T],T).
nombre(singular,masculino,['gobierno'|S],S,['goverment'|T],T).
nombre(plural,masculino,['gobiernos'|S],S,['goverments'|T],T).
nombre(singular,masculino,['grupo'|S],S,['group'|T],T).
nombre(plural,masculino,['grupos'|S],S,['groups'|T],T).
nombre(singular,femenino,['mano'|S],S,['hand'|T],T).
nombre(plural,femenino,['manos'|S],S,['hands'|T],T).
nombre(singular,masculino,['hogar'|S],S,['home'|T],T).
nombre(plural,femenino,['hogares'|S],S,['homes'|T],T).
nombre(singular,masculino,['trabajo'|S],S,['job'|T],T).
nombre(plural,masculino,['trabajos'|S],S,['jobs'|T],T).
nombre(singular,femenino,['vida'|S],S,['life'|T],T).
nombre(plural,masculino,['vidas'|S],S,['lifes'|T],T).
nombre(singular,masculino,['dinero'|S],S,['money'|T],T).
nombre(singular,masculino,['mes'|S],S,['month'|T],T).
nombre(plural,masculino,['meses'|S],S,['months'|T],T).
nombre(singular,femenino,['madre'|S],S,['mother'|T],T).
nombre(plural,femenino,['madres'|S],S,['mothers'|T],T).
nombre(singular,masculino,['señor'|S],S,['sir'|T],T).
nombre(plural,masculino,['señores'|S],S,['sirs'|T],T).
nombre(singular,femenino,['noche'|S],S,['night'|T],T).
nombre(plural,femenino,['noches'|S],S,['nights'|T],T).
nombre(singular,masculino,['numero'|S],S,['number'|T],T).
nombre(plural,masculino,['numeros'|S],S,['numbers'|T],T).
nombre(singular,femenino,['parte'|S],S,['part'|T],T).
nombre(plural,femenino,['partes'|S],S,['parts'|T],T).
nombre(singular,femenino,['persona'|S],S,['person'|T],T).
nombre(plural,femenino,['personas'|S],S,['people'|T],T).
nombre(singular,masculino,['lugar'|S],S,['place'|T],T).
nombre(plural,femenino,['lugares'|S],S,['places'|T],T).
nombre(singular,masculino,['putno'|S],S,['point'|T],T).
nombre(plural,masculino,['puntos'|S],S,['points'|T],T).
nombre(singular,masculino,['problema'|S],S,['points'|T],T).
nombre(plural,masculino,['problemas'|S],S,['points'|T],T).
nombre(singular,masculino,['programa'|S],S,['program'|T],T).
nombre(plural,masculino,['programas'|S],S,['programs'|T],T).
nombre(singular,femenino,['pregunta'|S],S,['question'|T],T).
nombre(plural,femenino,['preguntas'|S],S,['questions'|T],T).
nombre(singular,masculino,['derecho'|S],S,['right'|T],T).
nombre(plural,masculino,['derechos'|S],S,['rights'|T],T).
nombre(singular,femenino,['izquierda'|S],S,['left'|T],T).
nombre(singular,femenino,['habitación'|S],S,['room'|T],T).
nombre(plural,femenino,['habitaciones'|S],S,['rooms'|T],T).
nombre(singular,femenino,['escuela'|S],S,['school'|T],T).
nombre(plural,femenino,['escuelas'|S],S,['schools'|T],T).
nombre(singular,masculino,['estado'|S],S,['state'|T],T).
nombre(plural,masculino,['estados'|S],S,['states'|T],T).
nombre(singular,femenino,['historia'|S],S,['story'|T],T).
nombre(plural,femenino,['historias'|S],S,['stories'|T],T).
nombre(singular,masculino,['estudiante'|S],S,['student'|T],T).
nombre(plural,masculino,['estudiantes'|S],S,['students'|T],T).
nombre(singular,masculino,['estudio'|S],S,['studio'|T],T).
nombre(plural,masculino,['estudios'|S],S,['studios'|T],T).
nombre(singular,masculino,['sistema'|S],S,['system'|T],T).
nombre(plural,masculino,['sistemas'|S],S,['systems'|T],T).
nombre(singular,femenino,['cosa'|S],S,['thing'|T],T).
nombre(plural,femenino,['cosas'|S],S,['things'|T],T).
nombre(singular,masculino,['tiempo'|S],S,['time'|T],T).
nombre(plural,masculino,['tiempos'|S],S,['times'|T],T).
nombre(singular,masculino,['agua'|S],S,['water'|T],T).
nombre(singular,masculino,['camino'|S],S,['way'|T],T).
nombre(plural,masculino,['caminos'|S],S,['ways'|T],T).
nombre(singular,femenino,['semana'|S],S,['week'|T],T).
nombre(plural,femenino,['semanas'|S],S,['weeks'|T],T).
nombre(singular,femenino,['mujer'|S],S,['woman'|T],T).
nombre(plural,femenino,['mujeres'|S],S,['woman'|T],T).
nombre(singular,femenino,['palabra'|S],S,['word'|T],T).
nombre(plural,femenino,['palabras'|S],S,['words'|T],T).
nombre(singular,masculino,['mundo'|S],S,['world'|T],T).
nombre(plural,masculino,['mundos'|S],S,['worlds'|T],T).
nombre(singular,masculino,['año'|S],S,['year'|T],T).
nombre(plural,masculino,['años'|S],S,['years'|T],T).

%---------------------------------------------------------------

%%% VERBOS %%%

%% PRESENTE %%
verbo(presente,singular,primera,['como'|S],S,['eat'|T],T).
verbo(presente,plural,primera,['comemos'|S],S,['eat'|T],T).
verbo(presente,singular,segunda,['comes'|S],S,['eat'|T],T).
verbo(presente,plural,segunda,['comeis'|S],S,['eat'|T],T).
verbo(presente,singular,tercera,['come'|S],S,['eats'|T],T).
verbo(presente,plural,tercera,['comen'|S],S,['eat'|T],T).

%% PASADO %%
verbo(pasado,singular,primera,['pedí'|S],S,['asked'|T],T).
verbo(pasado,singular,segunda,['pediste'|S],S,['asked'|T],T).
verbo(pasado,singular,tercera,['pidió'|S],S,['asked'|T],T).
verbo(pasado,plural,primera,['pedimos'|S],S,['asked'|T],T).
verbo(pasado,plural,segunda,['pedisteis'|S],S,['asked'|T],T).
verbo(pasado,plural,tercera,['pidieron'|S],S,['asked'|T],T).

verbo(pasado,singular,primera,['fui'|S],S,['was'|T],T).
verbo(pasado,singular,segunda,['fuiste'|S],S,['was'|T],T).
verbo(pasado,singular,tercera,['fue'|S],S,['was'|T],T).
verbo(pasado,plural,primera,['fuimos'|S],S,['were'|T],T).
verbo(pasado,plural,segunda,['fuisteis'|S],S,['were'|T],T).
verbo(pasado,plural,tercera,['fueron'|S],S,['were'|T],T).

verbo(pasado,singular,primera,['volví'|S],S,['became'|T],T).
verbo(pasado,singular,segunda,['volviste'|S],S,['became'|T],T).
verbo(pasado,singular,tercera,['volvió'|S],S,['became'|T],T).
verbo(pasado,plural,primera,['volvimos'|S],S,['became'|T],T).
verbo(pasado,plural,segunda,['volvisteis'|S],S,['became'|T],T).
verbo(pasado,plural,tercera,['volvieron'|S],S,['became'|T],T).

verbo(pasado,singular,primera,['empecé'|S],S,['began'|T],T).
verbo(pasado,singular,segunda,['empezaste'|S],S,['began'|T],T).
verbo(pasado,singular,tercera,['empezó'|S],S,['began'|T],T).
verbo(pasado,plural,primera,['empezamos'|S],S,['began'|T],T).
verbo(pasado,plural,segunda,['empezasteis'|S],S,['began'|T],T).
verbo(pasado,plural,tercera,['empezaron'|S],S,['began'|T],T).

verbo(pasado,singular,primera,['llamé'|S],S,['called'|T],T).
verbo(pasado,singular,segunda,['llamaste'|S],S,['called'|T],T).
verbo(pasado,singular,tercera,['llamó'|S],S,['called'|T],T).
verbo(pasado,plural,primera,['llamamos'|S],S,['called'|T],T).
verbo(pasado,plural,segunda,['llamasteis'|S],S,['called'|T],T).
verbo(pasado,plural,tercera,['llamaron'|S],S,['called'|T],T).

verbo(pasado,singular,primera,['pude'|S],S,['could'|T],T).
verbo(pasado,singular,segunda,['pudiste'|S],S,['could'|T],T).
verbo(pasado,singular,tercera,['pudo'|S],S,['could'|T],T).
verbo(pasado,plural,primera,['pudimos'|S],S,['could'|T],T).
verbo(pasado,plural,segunda,['pudisteis'|S],S,['could'|T],T).
verbo(pasado,plural,tercera,['pudieron'|S],S,['could'|T],T).

verbo(pasado,singular,primera,['vine'|S],S,['came'|T],T).
verbo(pasado,singular,segunda,['viniste'|S],S,['came'|T],T).
verbo(pasado,singular,tercera,['vino'|S],S,['came'|T],T).
verbo(pasado,plural,primera,['vinimos'|S],S,['came'|T],T).
verbo(pasado,plural,segunda,['vinisteis'|S],S,['came'|T],T).
verbo(pasado,plural,tercera,['vinieron'|S],S,['came'|T],T).

verbo(pasado,singular,primera,['hice'|S],S,['did'|T],T).
verbo(pasado,singular,segunda,['hiciste'|S],S,['did'|T],T).
verbo(pasado,singular,tercera,['hizo'|S],S,['did'|T],T).
verbo(pasado,plural,primera,['hicimos'|S],S,['did'|T],T).
verbo(pasado,plural,segunda,['hicisteis'|S],S,['did'|T],T).
verbo(pasado,plural,tercera,['hicieron'|S],S,['did'|T],T).

verbo(pasado,singular,primera,['sentí'|S],S,['felt'|T],T).
verbo(pasado,singular,segunda,['sentiste'|S],S,['felt'|T],T).
verbo(pasado,singular,tercera,['sentió'|S],S,['felt'|T],T).
verbo(pasado,plural,primera,['sentimos'|S],S,['felt'|T],T).
verbo(pasado,plural,segunda,['sentisteis'|S],S,['felt'|T],T).
verbo(pasado,plural,tercera,['sintieron'|S],S,['felt'|T],T).

verbo(pasado,singular,primera,['encontré'|S],S,['found'|T],T).
verbo(pasado,singular,segunda,['encontraste'|S],S,['found'|T],T).
verbo(pasado,singular,tercera,['encontro'|S],S,['found'|T],T).
verbo(pasado,plural,primera,['encontramos'|S],S,['found'|T],T).
verbo(pasado,plural,segunda,['encontrasteis'|S],S,['found'|T],T).
verbo(pasado,plural,tercera,['encontraron'|S],S,['found'|T],T).

verbo(pasado,singular,primera,['obtuve'|S],S,['got'|T],T).
verbo(pasado,singular,segunda,['obtuviste'|S],S,['got'|T],T).
verbo(pasado,singular,tercera,['obtuvo'|S],S,['got'|T],T).
verbo(pasado,plural,primera,['obtuvimos'|S],S,['got'|T],T).
verbo(pasado,plural,segunda,['obtuvisteis'|S],S,['got'|T],T).
verbo(pasado,plural,tercera,['obtuvieron'|S],S,['got'|T],T).

verbo(pasado,singular,primera,['di'|S],S,['gave'|T],T).
verbo(pasado,singular,segunda,['diste'|S],S,['gave'|T],T).
verbo(pasado,singular,tercera,['dio'|S],S,['gave'|T],T).
verbo(pasado,plural,primera,['dimos'|S],S,['gave'|T],T).
verbo(pasado,plural,segunda,['disteis'|S],S,['gave'|T],T).
verbo(pasado,plural,tercera,['dieron'|S],S,['gave'|T],T).

verbo(pasado,singular,primera,['fui'|S],S,['went'|T],T).
verbo(pasado,singular,segunda,['fuiste'|S],S,['went'|T],T).
verbo(pasado,singular,tercera,['fue'|S],S,['went'|T],T).
verbo(pasado,plural,primera,['fuimos'|S],S,['went'|T],T).
verbo(pasado,plural,segunda,['fuisteis'|S],S,['went'|T],T).
verbo(pasado,plural,tercera,['fueron'|S],S,['went'|T],T).

verbo(pasado,singular,primera,['tuve'|S],S,['had'|T],T).
verbo(pasado,singular,segunda,['tuviste'|S],S,['had'|T],T).
verbo(pasado,singular,tercera,['tuvo'|S],S,['had'|T],T).
verbo(pasado,plural,primera,['tuvimos'|S],S,['had'|T],T).
verbo(pasado,plural,segunda,['tuvisteis'|S],S,['had'|T],T).
verbo(pasado,plural,tercera,['tuvieron'|S],S,['had'|T],T).

verbo(pasado,singular,primera,['escuché'|S],S,['had'|T],T).
verbo(pasado,singular,segunda,['escuchaste'|S],S,['had'|T],T).
verbo(pasado,singular,tercera,['escucho'|S],S,['had'|T],T).
verbo(pasado,plural,primera,['escuchamos'|S],S,['had'|T],T).
verbo(pasado,plural,segunda,['escuchasteis'|S],S,['had'|T],T).
verbo(pasado,plural,tercera,['escucharon'|S],S,['had'|T],T).

verbo(pasado,singular,primera,['ayudé'|S],S,['helped'|T],T).
verbo(pasado,singular,segunda,['ayudaste'|S],S,['helped'|T],T).
verbo(pasado,singular,tercera,['ayudo'|S],S,['helped'|T],T).
verbo(pasado,plural,primera,['ayudamos'|S],S,['helped'|T],T).
verbo(pasado,plural,segunda,['ayudasteis'|S],S,['helped'|T],T).
verbo(pasado,plural,tercera,['ayudaron'|S],S,['helped'|T],T).

verbo(pasado,singular,primera,['mantuve'|S],S,['kept'|T],T).
verbo(pasado,singular,segunda,['mantuviste'|S],S,['kept'|T],T).
verbo(pasado,singular,tercera,['mantuvo'|S],S,['kept'|T],T).
verbo(pasado,plural,primera,['mantuvimos'|S],S,['kept'|T],T).
verbo(pasado,plural,segunda,['mantuvisteis'|S],S,['kept'|T],T).
verbo(pasado,plural,tercera,['mantuvisteis'|S],S,['kept'|T],T).

verbo(pasado,singular,primera,['supe'|S],S,['knew'|T],T).
verbo(pasado,singular,segunda,['supiste'|S],S,['knew'|T],T).
verbo(pasado,singular,tercera,['supo'|S],S,['knew'|T],T).
verbo(pasado,plural,primera,['supimos'|S],S,['knew'|T],T).
verbo(pasado,plural,segunda,['supisteis'|S],S,['knew'|T],T).
verbo(pasado,plural,tercera,['supieron'|S],S,['knew'|T],T).

verbo(pasado,singular,primera,['salí'|S],S,['left'|T],T).
verbo(pasado,singular,segunda,['saliste'|S],S,['left'|T],T).
verbo(pasado,singular,tercera,['salió'|S],S,['left'|T],T).
verbo(pasado,plural,primera,['salimos'|S],S,['left'|T],T).
verbo(pasado,plural,segunda,['salisteis'|S],S,['left'|T],T).
verbo(pasado,plural,tercera,['salieron'|S],S,['left'|T],T).

verbo(pasado,singular,primera,['dejé'|S],S,['let'|T],T).
verbo(pasado,singular,segunda,['dejaste'|S],S,['let'|T],T).
verbo(pasado,singular,tercera,['dejó'|S],S,['let'|T],T).
verbo(pasado,plural,primera,['dejamos'|S],S,['let'|T],T).
verbo(pasado,plural,segunda,['dejasteis'|S],S,['let'|T],T).
verbo(pasado,plural,tercera,['dejaron'|S],S,['let'|T],T).

verbo(pasado,singular,primera,['quise'|S],S,['liked'|T],T).
verbo(pasado,singular,segunda,['quisiste'|S],S,['liked'|T],T).
verbo(pasado,singular,tercera,['quiso'|S],S,['liked'|T],T).
verbo(pasado,plural,primera,['quisimos'|S],S,['liked'|T],T).
verbo(pasado,plural,segunda,['quisisteis'|S],S,['liked'|T],T).
verbo(pasado,plural,tercera,['quisieron'|S],S,['liked'|T],T).

verbo(pasado,singular,primera,['viví'|S],S,['lived'|T],T).
verbo(pasado,singular,segunda,['viviste'|S],S,['lived'|T],T).
verbo(pasado,singular,tercera,['vivio'|S],S,['lived'|T],T).
verbo(pasado,plural,primera,['vivimos'|S],S,['lived'|T],T).
verbo(pasado,plural,segunda,['vivisteis'|S],S,['lived'|T],T).
verbo(pasado,plural,tercera,['vivieron'|S],S,['lived'|T],T).

verbo(pasado,singular,primera,['miré'|S],S,['looked'|T],T).
verbo(pasado,singular,segunda,['mirastes'|S],S,['looked'|T],T).
verbo(pasado,singular,tercera,['miró'|S],S,['looked'|T],T).
verbo(pasado,plural,primera,['miramos'|S],S,['looked'|T],T).
verbo(pasado,plural,segunda,['mirasteis'|S],S,['looked'|T],T).
verbo(pasado,plural,tercera,['miraron'|S],S,['looked'|T],T).

verbo(pasado,singular,primera,['amé'|S],S,['loved'|T],T).
verbo(pasado,singular,segunda,['amaste'|S],S,['loved'|T],T).
verbo(pasado,singular,tercera,['amó'|S],S,['loved'|T],T).
verbo(pasado,plural,primera,['amamos'|S],S,['loved'|T],T).
verbo(pasado,plural,segunda,['amasteis'|S],S,['loved'|T],T).
verbo(pasado,plural,tercera,['amaron'|S],S,['loved'|T],T).

verbo(pasado,singular,primera,['odié'|S],S,['hated'|T],T).
verbo(pasado,singular,segunda,['odiaste'|S],S,['hated'|T],T).
verbo(pasado,singular,tercera,['odió'|S],S,['hated'|T],T).
verbo(pasado,plural,primera,['odiamos'|S],S,['hated'|T],T).
verbo(pasado,plural,segunda,['odiasteis'|S],S,['hated'|T],T).
verbo(pasado,plural,tercera,['odiaron'|S],S,['hated'|T],T).

verbo(pasado,singular,primera,['hice'|S],S,['made'|T],T).
verbo(pasado,singular,segunda,['hiciste'|S],S,['made'|T],T).
verbo(pasado,singular,tercera,['hizo'|S],S,['made'|T],T).
verbo(pasado,plural,primera,['hicimos'|S],S,['made'|T],T).
verbo(pasado,plural,segunda,['hicisteis'|S],S,['made'|T],T).
verbo(pasado,plural,tercera,['hicieron'|S],S,['made'|T],T).

verbo(pasado,singular,primera,['pude'|S],S,['might'|T],T).
verbo(pasado,singular,segunda,['pudiste'|S],S,['might'|T],T).
verbo(pasado,singular,tercera,['pudo'|S],S,['might'|T],T).
verbo(pasado,plural,primera,['pudimos'|S],S,['might'|T],T).
verbo(pasado,plural,segunda,['pudisteis'|S],S,['might'|T],T).
verbo(pasado,plural,tercera,['pudieron'|S],S,['might'|T],T).

verbo(pasado,singular,primera,['signifiqué'|S],S,['meant'|T],T).
verbo(pasado,singular,segunda,['significaste'|S],S,['meant'|T],T).
verbo(pasado,singular,tercera,['significó'|S],S,['meant'|T],T).
verbo(pasado,plural,primera,['significamos'|S],S,['meant'|T],T).
verbo(pasado,plural,segunda,['significasteis'|S],S,['meant'|T],T).
verbo(pasado,plural,tercera,['significaron'|S],S,['meant'|T],T).

verbo(pasado,singular,primera,['moví'|S],S,['moved'|T],T).
verbo(pasado,singular,segunda,['moviste'|S],S,['moved'|T],T).
verbo(pasado,singular,tercera,['movió'|S],S,['moved'|T],T).
verbo(pasado,plural,primera,['movimos'|S],S,['moved'|T],T).
verbo(pasado,plural,segunda,['movisteis'|S],S,['moved'|T],T).
verbo(pasado,plural,tercera,['movisteis'|S],S,['moved'|T],T).

verbo(pasado,singular,primera,['necesité'|S],S,['needed'|T],T).
verbo(pasado,singular,segunda,['necesitaste'|S],S,['needed'|T],T).
verbo(pasado,singular,tercera,['necesitó'|S],S,['needed'|T],T).
verbo(pasado,plural,primera,['necesitamos'|S],S,['needed'|T],T).
verbo(pasado,plural,segunda,['necesitasteis'|S],S,['needed'|T],T).
verbo(pasado,plural,tercera,['necesitaron'|S],S,['needed'|T],T).

verbo(pasado,singular,primera,['jugué'|S],S,['played'|T],T).
verbo(pasado,singular,segunda,['juguaste'|S],S,['played'|T],T).
verbo(pasado,singular,tercera,['juguó'|S],S,['played'|T],T).
verbo(pasado,plural,primera,['juguamos'|S],S,['played'|T],T).
verbo(pasado,plural,segunda,['juguasteis'|S],S,['played'|T],T).
verbo(pasado,plural,tercera,['juguaron'|S],S,['played'|T],T).

verbo(pasado,singular,primera,['puse'|S],S,['put'|T],T).
verbo(pasado,singular,segunda,['pusiste'|S],S,['put'|T],T).
verbo(pasado,singular,tercera,['puso'|S],S,['put'|T],T).
verbo(pasado,plural,primera,['pusimos'|S],S,['put'|T],T).
verbo(pasado,plural,segunda,['pusistes'|S],S,['put'|T],T).
verbo(pasado,plural,tercera,['pusieron'|S],S,['put'|T],T).

verbo(pasado,singular,primera,['corrí'|S],S,['run'|T],T).
verbo(pasado,singular,segunda,['corristes'|S],S,['run'|T],T).
verbo(pasado,singular,tercera,['corrió'|S],S,['run'|T],T).
verbo(pasado,plural,primera,['corrimos'|S],S,['run'|T],T).
verbo(pasado,plural,segunda,['corristeis'|S],S,['run'|T],T).
verbo(pasado,plural,tercera,['corrieron'|S],S,['run'|T],T).

verbo(pasado,singular,primera,['dije'|S],S,['said'|T],T).
verbo(pasado,singular,segunda,['dijiste'|S],S,['said'|T],T).
verbo(pasado,singular,tercera,['dijo'|S],S,['said'|T],T).
verbo(pasado,plural,primera,['dijimos'|S],S,['said'|T],T).
verbo(pasado,plural,segunda,['dijisteis'|S],S,['said'|T],T).
verbo(pasado,plural,tercera,['dijeron'|S],S,['said'|T],T).


%---------------------------------------------------------------

adjetivo(singular,masculino,['pequeño'|S],S,['little'|T],T).
adjetivo(singular,femenino,['pequeña'|S],S,['little'|T],T).
adjetivo(plural,masculino,['pequeños'|S],S,['little'|T],T).
adjetivo(plural,femenino,['pequeñas'|S],S,['little'|T],T).

%---------------------------------------------------------------

pronombre(singular,_,primera,['yo'|S],S,['I'|T],T).
pronombre(singular,_,segunda,['tu'|S],S,['you'|T],T).
pronombre(singular,masculino,tercera,['el'|S],S,['he'|T],T).
pronombre(singular,femenino,tercera,['ella'|S],S,['she'|T],T).
pronombre(plural,masculino,primera,['nosotros'|S],S,['we'|T],T).
pronombre(plural,masculino,segunda,['vosotros'|S],S,['you'|T],T).
pronombre(plural,masculino,tercera,['ellos'|S],S,['they'|T],T).
pronombre(plural,femenino,primera,['nosotras'|S],S,['we'|T],T).
pronombre(plural,femenino,segunda,['vosotras'|S],S,['you'|T],T).
pronombre(plural,femenino,tercera,['ellas'|S],S,['they'|T],T).
