
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

% 10

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

% 20

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

nombre(singular,masculino,['problema'|S],S,['problem'|T],T).
nombre(plural,masculino,['problemas'|S],S,['problems'|T],T).

% 30

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

% 40

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

% 50

%---------------------------------------------------------------

%%% VERBOS %%%

%% PRESENTE %%
verbo(presente,singular,primera,['como'|S],S,['eat'|T],T).
verbo(presente,plural,primera,['comemos'|S],S,['eat'|T],T).
verbo(presente,singular,segunda,['comes'|S],S,['eat'|T],T).
verbo(presente,plural,segunda,['comeis'|S],S,['eat'|T],T).
verbo(presente,singular,tercera,['come'|S],S,['eats'|T],T).
verbo(presente,plural,tercera,['comen'|S],S,['eat'|T],T).

verbo(presente,singular,primera,['pregunto'|S],S,['ask'|T],T).
verbo(presente,plural,primera,['preguntamos'|S],S,['ask'|T],T).
verbo(presente,singular,segunda,['preguntas'|S],S,['ask'|T],T).
verbo(presente,plural,segunda,['preguntais'|S],S,['ask'|T],T).
verbo(presente,singular,tercera,['pregunta'|S],S,['asks'|T],T).
verbo(presente,plural,tercera,['preguntan'|S],S,['ask'|T],T).

verbo(presente,singular,primera,['soy'|S],S,['am'|T],T).
verbo(presente,plural,primera,['somos'|S],S,['are'|T],T).          
verbo(presente,singular,segunda,['eres'|S],S,['are'|T],T).        
verbo(presente,plural,segunda,['sois'|S],S,['are'|T],T).         
verbo(presente,singular,tercera,['es'|S],S,['is'|T],T).        
verbo(presente,plural,tercera,['son'|S],S,['are'|T],T).          

verbo(presente,singular,primera,['me vuelvo'|S],S,['become'|T],T).
verbo(presente,plural,primera,['nos volvemos'|S],S,['become'|T],T).          
verbo(presente,singular,segunda,['te vuelves'|S],S,['become'|T],T).        
verbo(presente,plural,segunda,['os volveis'|S],S,['become'|T],T).         
verbo(presente,singular,tercera,['se vuelve'|S],S,['becomes'|T],T).        
verbo(presente,plural,tercera,['se vuelven'|S],S,['become'|T],T).          

verbo(presente,singular,primera,['comienza'|S],S,['begin'|T],T).
verbo(presente,plural,primera,['comenzamos'|S],S,['begin'|T],T).          
verbo(presente,singular,segunda,['comienzas'|S],S,['begin'|T],T).        
verbo(presente,plural,segunda,['comenzias'|S],S,['begin'|T],T).         
verbo(presente,singular,tercera,['comienza'|S],S,['begins'|T],T).        
verbo(presente,plural,tercera,['comienzan'|S],S,['begin'|T],T).          

verbo(presente,singular,primera,['llama'|S],S,['call'|T],T).
verbo(presente,plural,primera,['llamamos'|S],S,['call'|T],T).          
verbo(presente,singular,segunda,['llamas'|S],S,['call'|T],T).        
verbo(presente,plural,segunda,['llamais'|S],S,['call'|T],T).         
verbo(presente,singular,tercera,['llama'|S],S,['calls'|T],T).        
verbo(presente,plural,tercera,['llaman'|S],S,['call'|T],T).          

verbo(presente,singular,primera,['puedo'|S],S,['can'|T],T).
verbo(presente,plural,primera,['podemos'|S],S,['can'|T],T).          
verbo(presente,singular,segunda,['puedes'|S],S,['can'|T],T).        
verbo(presente,plural,segunda,['podeis'|S],S,['can'|T],T).         
verbo(presente,singular,tercera,['puede'|S],S,['can'|T],T).        
verbo(presente,plural,tercera,['pueden'|S],S,['can'|T],T).          

verbo(presente,singular,primera,['vengo'|S],S,['come'|T],T).
verbo(presente,plural,primera,['venimos'|S],S,['come'|T],T).          
verbo(presente,singular,segunda,['vienes'|S],S,['come'|T],T).        
verbo(presente,plural,segunda,['venis'|S],S,['come'|T],T).         
verbo(presente,singular,tercera,['viene'|S],S,['comes'|T],T).        
verbo(presente,plural,tercera,['vienen'|S],S,['come'|T],T).          

verbo(presente,singular,primera,['hago'|S],S,['do'|T],T).
verbo(presente,plural,primera,['hacemos'|S],S,['do'|T],T).          
verbo(presente,singular,segunda,['haces'|S],S,['do'|T],T).        
verbo(presente,plural,segunda,['haceis'|S],S,['do'|T],T).         
verbo(presente,singular,tercera,['hace'|S],S,['does'|T],T).        
verbo(presente,plural,tercera,['hacen'|S],S,['do'|T],T).          

verbo(presente,singular,primera,['siento'|S],S,['feel'|T],T).
verbo(presente,plural,primera,['sentimos'|S],S,['feel'|T],T).          
verbo(presente,singular,segunda,['sientes'|S],S,['feel'|T],T).        
verbo(presente,plural,segunda,['sentis'|S],S,['feel'|T],T).         
verbo(presente,singular,tercera,['siente'|S],S,['feels'|T],T).        
verbo(presente,plural,tercera,['sienten'|S],S,['feel'|T],T).          

% 10

verbo(presente,singular,primera,['encuentro'|S],S,['find'|T],T).
verbo(presente,plural,primera,['encontramos'|S],S,['find'|T],T).          
verbo(presente,singular,segunda,['ecuentras'|S],S,['find'|T],T).        
verbo(presente,plural,segunda,['encontrais'|S],S,['find'|T],T).         
verbo(presente,singular,tercera,['encuentra'|S],S,['finds'|T],T).        
verbo(presente,plural,tercera,['encuentran'|S],S,['find'|T],T).          

verbo(presente,singular,primera,['obtengo'|S],S,['get'|T],T).
verbo(presente,plural,primera,['obtenemos'|S],S,['get'|T],T).          
verbo(presente,singular,segunda,['obtienes'|S],S,['get'|T],T).        
verbo(presente,plural,segunda,['obteneis'|S],S,['get'|T],T).         
verbo(presente,singular,tercera,['obiene'|S],S,['gets'|T],T).        
verbo(presente,plural,tercera,['obtienen'|S],S,['get'|T],T).          

verbo(presente,singular,primera,['doy'|S],S,['give'|T],T).
verbo(presente,plural,primera,['damos'|S],S,['give'|T],T).          
verbo(presente,singular,segunda,['das'|S],S,['give'|T],T).        
verbo(presente,plural,segunda,['dais'|S],S,['give'|T],T).         
verbo(presente,singular,tercera,['da'|S],S,['gives'|T],T).        
verbo(presente,plural,tercera,['dan'|S],S,['give'|T],T).          

verbo(presente,singular,primera,['voy'|S],S,['go'|T],T).
verbo(presente,plural,primera,['vamos'|S],S,['go'|T],T).          
verbo(presente,singular,segunda,['vas'|S],S,['go'|T],T).        
verbo(presente,plural,segunda,['vais'|S],S,['go'|T],T).         
verbo(presente,singular,tercera,['va'|S],S,['goes'|T],T).        
verbo(presente,plural,tercera,['van'|S],S,['go'|T],T).          

verbo(presente,singular,primera,['tengo'|S],S,['have'|T],T).
verbo(presente,plural,primera,['tenemos'|S],S,['have'|T],T).          
verbo(presente,singular,segunda,['tienes'|S],S,['have'|T],T).        
verbo(presente,plural,segunda,['teneis'|S],S,['have'|T],T).         
verbo(presente,singular,tercera,['tiene'|S],S,['has'|T],T).        
verbo(presente,plural,tercera,['tienen'|S],S,['have'|T],T).          

verbo(presente,singular,primera,['escucho'|S],S,['hear'|T],T).
verbo(presente,plural,primera,['escuchamos'|S],S,['hear'|T],T).          
verbo(presente,singular,segunda,['escuchas'|S],S,['hear'|T],T).        
verbo(presente,plural,segunda,['escuchais'|S],S,['hear'|T],T).         
verbo(presente,singular,tercera,['escucha'|S],S,['hears'|T],T).        
verbo(presente,plural,tercera,['escuchan'|S],S,['hear'|T],T).          

verbo(presente,singular,primera,['ayudo'|S],S,['help'|T],T).
verbo(presente,plural,primera,['ayudamos'|S],S,['help'|T],T).          
verbo(presente,singular,segunda,['ayudas'|S],S,['help'|T],T).        
verbo(presente,plural,segunda,['ayudais'|S],S,['help'|T],T).         
verbo(presente,singular,tercera,['ayuda'|S],S,['helps'|T],T).        
verbo(presente,plural,tercera,['ayudan'|S],S,['help'|T],T).          

verbo(presente,singular,primera,['mantengo'|S],S,['keep'|T],T).
verbo(presente,plural,primera,['mantenemos'|S],S,['keep'|T],T).          
verbo(presente,singular,segunda,['mantienes'|S],S,['keep'|T],T).        
verbo(presente,plural,segunda,['manteneis'|S],S,['keep'|T],T).         
verbo(presente,singular,tercera,['mantiene'|S],S,['keeps'|T],T).        
verbo(presente,plural,tercera,['mantienen'|S],S,['keep'|T],T).          

verbo(presente,singular,primera,['se'|S],S,['know'|T],T).
verbo(presente,plural,primera,['sabemos'|S],S,['know'|T],T).          
verbo(presente,singular,segunda,['sabes'|S],S,['know'|T],T).        
verbo(presente,plural,segunda,['sabeis'|S],S,['know'|T],T).         
verbo(presente,singular,tercera,['sabe'|S],S,['knows'|T],T).        
verbo(presente,plural,tercera,['saben'|S],S,['know'|T],T).          

verbo(presente,singular,primera,['salgo'|S],S,['leave'|T],T).
verbo(presente,plural,primera,['salimos'|S],S,['leave'|T],T).          
verbo(presente,singular,segunda,['sales'|S],S,['leave'|T],T).        
verbo(presente,plural,segunda,['salis'|S],S,['leave'|T],T).         
verbo(presente,singular,tercera,['sale'|S],S,['leaves'|T],T).        
verbo(presente,plural,tercera,['salen'|S],S,['leave'|T],T).          

% 20

verbo(presente,singular,primera,['dejo'|S],S,['let'|T],T).
verbo(presente,plural,primera,['dejamos'|S],S,['let'|T],T).          
verbo(presente,singular,segunda,['dejas'|S],S,['let'|T],T).        
verbo(presente,plural,segunda,['dejais'|S],S,['let'|T],T).         
verbo(presente,singular,tercera,['deja'|S],S,['lets'|T],T).        
verbo(presente,plural,tercera,['dejan'|S],S,['let'|T],T).          

verbo(presente,singular,primera,['quiero'|S],S,['like'|T],T).
verbo(presente,plural,primera,['queremos'|S],S,['like'|T],T).          
verbo(presente,singular,segunda,['quieres'|S],S,['like'|T],T).        
verbo(presente,plural,segunda,['quereis'|S],S,['like'|T],T).         
verbo(presente,singular,tercera,['quiere'|S],S,['likes'|T],T).        
verbo(presente,plural,tercera,['quieren'|S],S,['like'|T],T).          

verbo(presente,singular,primera,['vivo'|S],S,['live'|T],T).
verbo(presente,plural,primera,['vivimos'|S],S,['live'|T],T).          
verbo(presente,singular,segunda,['vives'|S],S,['live'|T],T).        
verbo(presente,plural,segunda,['vivis'|S],S,['live'|T],T).         
verbo(presente,singular,tercera,['vive'|S],S,['lives'|T],T).        
verbo(presente,plural,tercera,['viven'|S],S,['live'|T],T).          

verbo(presente,singular,primera,['veo'|S],S,['look'|T],T).
verbo(presente,plural,primera,['vemos'|S],S,['look'|T],T).          
verbo(presente,singular,segunda,['ves'|S],S,['look'|T],T).        
verbo(presente,plural,segunda,['veis'|S],S,['look'|T],T).         
verbo(presente,singular,tercera,['ve'|S],S,['looks'|T],T).       
verbo(presente,plural,tercera,['ven'|S],S,['look'|T],T).          

verbo(presente,singular,primera,['amo'|S],S,['love'|T],T).
verbo(presente,plural,primera,['amamos'|S],S,['love'|T],T).          
verbo(presente,singular,segunda,['amas'|S],S,['love'|T],T).        
verbo(presente,plural,segunda,['amais'|S],S,['love'|T],T).         
verbo(presente,singular,tercera,['ama'|S],S,['loves'|T],T).       
verbo(presente,plural,tercera,['aman'|S],S,['love'|T],T).          

verbo(presente,singular,primera,['odio'|S],S,['hate'|T],T).
verbo(presente,plural,primera,['odiamos'|S],S,['hate'|T],T).          
verbo(presente,singular,segunda,['odias'|S],S,['hate'|T],T).        
verbo(presente,plural,segunda,['odiais'|S],S,['hate'|T],T).         
verbo(presente,singular,tercera,['odia'|S],S,['hates'|T],T).       
verbo(presente,plural,tercera,['odian'|S],S,['hate'|T],T).          

verbo(presente,singular,primera,['hago'|S],S,['make'|T],T).
verbo(presente,plural,primera,['hacemos'|S],S,['make'|T],T).          
verbo(presente,singular,segunda,['haces'|S],S,['make'|T],T).        
verbo(presente,plural,segunda,['haceis'|S],S,['make'|T],T).         
verbo(presente,singular,tercera,['hace'|S],S,['makes'|T],T).       
verbo(presente,plural,tercera,['hacen'|S],S,['make'|T],T).          

verbo(presente,singular,primera,['puedo'|S],S,['may'|T],T).
verbo(presente,plural,primera,['podemos'|S],S,['may'|T],T).          
verbo(presente,singular,segunda,['puedes'|S],S,['may'|T],T).        
verbo(presente,plural,segunda,['podeis'|S],S,['may'|T],T).         
verbo(presente,singular,tercera,['puede'|S],S,['may'|T],T).       
verbo(presente,plural,tercera,['pueden'|S],S,['may'|T],T).          

verbo(presente,singular,primera,['supongo'|S],S,['guess'|T],T).
verbo(presente,plural,primera,['suponemos'|S],S,['guess'|T],T).          
verbo(presente,singular,segunda,['supones'|S],S,['guess'|T],T).        
verbo(presente,plural,segunda,['suponeis'|S],S,['guess'|T],T).         
verbo(presente,singular,tercera,['supone'|S],S,['guesses'|T],T).       
verbo(presente,plural,tercera,['suponen'|S],S,['guess'|T],T).          

verbo(presente,singular,primera,['muevo'|S],S,['move'|T],T).
verbo(presente,plural,primera,['movemos'|S],S,['move'|T],T).          
verbo(presente,singular,segunda,['mueves'|S],S,['move'|T],T).        
verbo(presente,plural,segunda,['moveis'|S],S,['move'|T],T).         
verbo(presente,singular,tercera,['mueve'|S],S,['moves'|T],T).       
verbo(presente,plural,tercera,['mueven'|S],S,['move'|T],T).          

% 30

verbo(presente,singular,primera,['necesito'|S],S,['need'|T],T).
verbo(presente,plural,primera,['necesitamos'|S],S,['need'|T],T).          
verbo(presente,singular,segunda,['necesitas'|S],S,['need'|T],T).        
verbo(presente,plural,segunda,['necesitais'|S],S,['need'|T],T).         
verbo(presente,singular,tercera,['necesita'|S],S,['needs'|T],T).       
verbo(presente,plural,tercera,['necesitas'|S],S,['need'|T],T).          

verbo(presente,singular,primera,['juego'|S],S,['play'|T],T).
verbo(presente,plural,primera,['jugamos'|S],S,['play'|T],T).          
verbo(presente,singular,segunda,['juegas'|S],S,['play'|T],T).        
verbo(presente,plural,segunda,['jugais'|S],S,['play'|T],T).         
verbo(presente,singular,tercera,['juega'|S],S,['plays'|T],T).       
verbo(presente,plural,tercera,['juegan'|S],S,['play'|T],T).          

verbo(presente,singular,primera,['pongo'|S],S,['put'|T],T).
verbo(presente,plural,primera,['ponemos'|S],S,['put'|T],T).          
verbo(presente,singular,segunda,['pones'|S],S,['put'|T],T).        
verbo(presente,plural,segunda,['poneis'|S],S,['put'|T],T).         
verbo(presente,singular,tercera,['pone'|S],S,['puts'|T],T).       
verbo(presente,plural,tercera,['ponen'|S],S,['put'|T],T).          

verbo(presente,singular,primera,['corro'|S],S,['run'|T],T).
verbo(presente,plural,primera,['corremos'|S],S,['run'|T],T).          
verbo(presente,singular,segunda,['corres'|S],S,['run'|T],T).        
verbo(presente,plural,segunda,['correis'|S],S,['run'|T],T).         
verbo(presente,singular,tercera,['corre'|S],S,['runs'|T],T).       
verbo(presente,plural,tercera,['corren'|S],S,['run'|T],T).          

verbo(presente,singular,primera,['digo'|S],S,['say'|T],T).
verbo(presente,plural,primera,['decimos'|S],S,['say'|T],T).          
verbo(presente,singular,segunda,['dices'|S],S,['say'|T],T).        
verbo(presente,plural,segunda,['decis'|S],S,['say'|T],T).         
verbo(presente,singular,tercera,['dice'|S],S,['says'|T],T).       
verbo(presente,plural,tercera,['dicen'|S],S,['say'|T],T).          

verbo(presente,singular,primera,['observo'|S],S,['see'|T],T).
verbo(presente,plural,primera,['observamos'|S],S,['see'|T],T).          
verbo(presente,singular,segunda,['observas'|S],S,['see'|T],T).        
verbo(presente,plural,segunda,['observais'|S],S,['see'|T],T).         
verbo(presente,singular,tercera,['observa'|S],S,['sees'|T],T).       
verbo(presente,plural,tercera,['observan'|S],S,['see'|T],T).          

verbo(presente,singular,primera,['aparento'|S],S,['seem'|T],T).
verbo(presente,plural,primera,['aparentamos'|S],S,['seem'|T],T).          
verbo(presente,singular,segunda,['aparentas'|S],S,['seem'|T],T).        
verbo(presente,plural,segunda,['aparentais'|S],S,['seem'|T],T).         
verbo(presente,singular,tercera,['aparenta'|S],S,['seems'|T],T).       
verbo(presente,plural,tercera,['aparentan'|S],S,['seem'|T],T).          

verbo(presente,singular,primera,['debo'|S],S,['owe'|T],T).
verbo(presente,plural,primera,['debemos'|S],S,['owe'|T],T).          
verbo(presente,singular,segunda,['debes'|S],S,['owe'|T],T).        
verbo(presente,plural,segunda,['debeis'|S],S,['owe'|T],T).         
verbo(presente,singular,tercera,['debe'|S],S,['owes'|T],T).       
verbo(presente,plural,tercera,['deben'|S],S,['owe'|T],T).          

verbo(presente,singular,primera,['muestro'|S],S,['show'|T],T).
verbo(presente,plural,primera,['mostramos'|S],S,['show'|T],T).          
verbo(presente,singular,segunda,['muestras'|S],S,['show'|T],T).        
verbo(presente,plural,segunda,['mostrais'|S],S,['show'|T],T).         
verbo(presente,singular,tercera,['muestra'|S],S,['shows'|T],T).       
verbo(presente,plural,tercera,['muestran'|S],S,['show'|T],T).          

verbo(presente,singular,primera,['empizo'|S],S,['start'|T],T).
verbo(presente,plural,primera,['empezamos'|S],S,['start'|T],T).          
verbo(presente,singular,segunda,['empiezas'|S],S,['start'|T],T).        
verbo(presente,plural,segunda,['empezais'|S],S,['start'|T],T).         
verbo(presente,singular,tercera,['empieza'|S],S,['starts'|T],T).       
verbo(presente,plural,tercera,['empiezan'|S],S,['start'|T],T).          

% 40

verbo(presente,singular,primera,['agarro'|S],S,['take'|T],T).
verbo(presente,plural,primera,['agarramos'|S],S,['take'|T],T).          
verbo(presente,singular,segunda,['agarras'|S],S,['take'|T],T).        
verbo(presente,plural,segunda,['agarrais'|S],S,['take'|T],T).         
verbo(presente,singular,tercera,['agarra'|S],S,['takes'|T],T).       
verbo(presente,plural,tercera,['agarran'|S],S,['take'|T],T).          

verbo(presente,singular,primera,['hablo'|S],S,['talk'|T],T).
verbo(presente,plural,primera,['hablamos'|S],S,['talk'|T],T).          
verbo(presente,singular,segunda,['hablas'|S],S,['talk'|T],T).        
verbo(presente,plural,segunda,['hablais'|S],S,['talk'|T],T).         
verbo(presente,singular,tercera,['habla'|S],S,['talks'|T],T).       
verbo(presente,plural,tercera,['hablan'|S],S,['talk'|T],T).          

verbo(presente,singular,primera,['cuento'|S],S,['tell'|T],T).
verbo(presente,plural,primera,['contamos'|S],S,['tell'|T],T).          
verbo(presente,singular,segunda,['cuentas'|S],S,['tell'|T],T).        
verbo(presente,plural,segunda,['contais'|S],S,['tell'|T],T).         
verbo(presente,singular,tercera,['cuenta'|S],S,['tells'|T],T).       
verbo(presente,plural,tercera,['cuentan'|S],S,['tell'|T],T).          

verbo(presente,singular,primera,['pienso'|S],S,['think'|T],T).
verbo(presente,plural,primera,['pensamos'|S],S,['think'|T],T).          
verbo(presente,singular,segunda,['piensas'|S],S,['think'|T],T).        
verbo(presente,plural,segunda,['pensais'|S],S,['think'|T],T).         
verbo(presente,singular,tercera,['piensa'|S],S,['thinks'|T],T).       
verbo(presente,plural,tercera,['piensa'|S],S,['think'|T],T).          

verbo(presente,singular,primera,['intento'|S],S,['try'|T],T).
verbo(presente,plural,primera,['intentamos'|S],S,['try'|T],T).          
verbo(presente,singular,segunda,['intentas'|S],S,['try'|T],T).        
verbo(presente,plural,segunda,['intentais'|S],S,['try'|T],T).         
verbo(presente,singular,tercera,['intenta'|S],S,['tries'|T],T).       
verbo(presente,plural,tercera,['intentan'|S],S,['try'|T],T).          

verbo(presente,singular,primera,['giro'|S],S,['turn'|T],T).
verbo(presente,plural,primera,['giramos'|S],S,['turn'|T],T).          
verbo(presente,singular,segunda,['gira'|S],S,['turn'|T],T).        
verbo(presente,plural,segunda,['girais'|S],S,['turn'|T],T).         
verbo(presente,singular,tercera,['gira'|S],S,['turns'|T],T).       
verbo(presente,plural,tercera,['giran'|S],S,['turn'|T],T).          

verbo(presente,singular,primera,['uso'|S],S,['use'|T],T).
verbo(presente,plural,primera,['usamos'|S],S,['use'|T],T).          
verbo(presente,singular,segunda,['usas'|S],S,['use'|T],T).        
verbo(presente,plural,segunda,['usais'|S],S,['use'|T],T).         
verbo(presente,singular,tercera,['usa'|S],S,['uses'|T],T).       
verbo(presente,plural,tercera,['usan'|S],S,['use'|T],T).          

verbo(presente,singular,primera,['quiero'|S],S,['want'|T],T).
verbo(presente,plural,primera,['queremos'|S],S,['want'|T],T).          
verbo(presente,singular,segunda,['quieres'|S],S,['want'|T],T).        
verbo(presente,plural,segunda,['quereis'|S],S,['want'|T],T).         
verbo(presente,singular,tercera,['quiere'|S],S,['wants'|T],T).       
verbo(presente,plural,tercera,['quieren'|S],S,['want'|T],T).          

verbo(presente,singular,primera,['camino'|S],S,['walk'|T],T).
verbo(presente,plural,primera,['caminamos'|S],S,['walk'|T],T).          
verbo(presente,singular,segunda,['caminas'|S],S,['walk'|T],T).        
verbo(presente,plural,segunda,['caminais'|S],S,['walk'|T],T).         
verbo(presente,singular,tercera,['camina'|S],S,['walks'|T],T).       
verbo(presente,plural,tercera,['caminan'|S],S,['walk'|T],T).          

verbo(presente,singular,primera,['trabajo'|S],S,['work'|T],T).
verbo(presente,plural,primera,['trabajamos'|S],S,['work'|T],T).          
verbo(presente,singular,segunda,['trabaja'|S],S,['work'|T],T).        
verbo(presente,plural,segunda,['trabajais'|S],S,['work'|T],T).         
verbo(presente,singular,tercera,['trabaja'|S],S,['works'|T],T).       
verbo(presente,plural,tercera,['trabajan'|S],S,['work'|T],T).          

% 50


%% PASADO %%
verbo(pasado,singular,primera,['comi'|S],S,['ate'|T],T).     
verbo(pasado,singular,segunda,['comiste'|S],S,['ate'|T],T).     
verbo(pasado,singular,tercera,['comio'|S],S,['ate'|T],T).     
verbo(pasado,plural,primera,['comimos'|S],S,['ate'|T],T).       
verbo(pasado,plural,segunda,['comisteis'|S],S,['ate'|T],T).       
verbo(pasado,plural,tercera,['comieron'|S],S,['ate'|T],T).       

verbo(pasado,singular,primera,['pedi'|S],S,['asked'|T],T).
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

verbo(pasado,singular,primera,['me volvia'|S],S,['became'|T],T).
verbo(pasado,singular,segunda,['te volvias'|S],S,['became'|T],T).
verbo(pasado,singular,tercera,['se volvia'|S],S,['became'|T],T).
verbo(pasado,plural,primera,['nos volviamos'|S],S,['became'|T],T).
verbo(pasado,plural,segunda,['os volviais'|S],S,['became'|T],T).
verbo(pasado,plural,tercera,['se volvian'|S],S,['became'|T],T).

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

% 10

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

verbo(pasado,singular,primera,['escuché'|S],S,['heard'|T],T).
verbo(pasado,singular,segunda,['escuchaste'|S],S,['heard'|T],T).
verbo(pasado,singular,tercera,['escucho'|S],S,['heard'|T],T).
verbo(pasado,plural,primera,['escuchamos'|S],S,['heard'|T],T).
verbo(pasado,plural,segunda,['escuchasteis'|S],S,['heard'|T],T).
verbo(pasado,plural,tercera,['escucharon'|S],S,['heard'|T],T).

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

% 20

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

verbo(pasado,singular,primera,['suponia'|S],S,['guessed'|T],T).
verbo(pasado,singular,segunda,['suponias'|S],S,['guessed'|T],T).
verbo(pasado,singular,tercera,['suponia'|S],S,['guessed'|T],T).
verbo(pasado,plural,primera,['suponiamos'|S],S,['guessed'|T],T).
verbo(pasado,plural,segunda,['suponiais'|S],S,['guessed'|T],T).
verbo(pasado,plural,tercera,['suponian'|S],S,['guessed'|T],T).

verbo(pasado,singular,primera,['moví'|S],S,['moved'|T],T).
verbo(pasado,singular,segunda,['moviste'|S],S,['moved'|T],T).
verbo(pasado,singular,tercera,['movió'|S],S,['moved'|T],T).
verbo(pasado,plural,primera,['movimos'|S],S,['moved'|T],T).
verbo(pasado,plural,segunda,['movisteis'|S],S,['moved'|T],T).
verbo(pasado,plural,tercera,['movisteis'|S],S,['moved'|T],T).

% 30

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

verbo(pasado,singular,primera,['corrí'|S],S,['ran'|T],T).
verbo(pasado,singular,segunda,['corristes'|S],S,['ran'|T],T).
verbo(pasado,singular,tercera,['corrió'|S],S,['ran'|T],T).
verbo(pasado,plural,primera,['corrimos'|S],S,['ran'|T],T).
verbo(pasado,plural,segunda,['corristeis'|S],S,['ran'|T],T).
verbo(pasado,plural,tercera,['corrieron'|S],S,['ran'|T],T).

verbo(pasado,singular,primera,['dije'|S],S,['said'|T],T).
verbo(pasado,singular,segunda,['dijiste'|S],S,['said'|T],T).
verbo(pasado,singular,tercera,['dijo'|S],S,['said'|T],T).
verbo(pasado,plural,primera,['dijimos'|S],S,['said'|T],T).
verbo(pasado,plural,segunda,['dijisteis'|S],S,['said'|T],T).
verbo(pasado,plural,tercera,['dijeron'|S],S,['said'|T],T).

verbo(pasado,singular,primera,['veia'|S],S,['saw'|T],T).     
verbo(pasado,singular,segunda,['veias'|S],S,['saw'|T],T).     
verbo(pasado,singular,tercera,['veia'|S],S,['saw'|T],T).     
verbo(pasado,plural,primera,['veiamos'|S],S,['saw'|T],T).       
verbo(pasado,plural,segunda,['veiais'|S],S,['saw'|T],T).       
verbo(pasado,plural,tercera,['veian'|S],S,['saw'|T],T).       

verbo(pasado,singular,primera,['aparentaba'|S],S,['seemed'|T],T).     
verbo(pasado,singular,segunda,['aparentabas'|S],S,['seemed'|T],T).     
verbo(pasado,singular,tercera,['aparentaba'|S],S,['seemed'|T],T).     
verbo(pasado,plural,primera,['aparentabamos'|S],S,['seemed'|T],T).       
verbo(pasado,plural,segunda,['aparentabais'|S],S,['seemed'|T],T).       
verbo(pasado,plural,tercera,['aparentan'|S],S,['seemed'|T],T).       

verbo(pasado,singular,primera,['debia'|S],S,['owed'|T],T).     
verbo(pasado,singular,segunda,['debias'|S],S,['owed'|T],T).     
verbo(pasado,singular,tercera,['debia'|S],S,['owed'|T],T).     
verbo(pasado,plural,primera,['debiamos'|S],S,['owed'|T],T).       
verbo(pasado,plural,segunda,['debiais'|S],S,['owed'|T],T).       
verbo(pasado,plural,tercera,['debian'|S],S,['owed'|T],T).       

verbo(pasado,singular,primera,['mostraba'|S],S,['showed'|T],T).     
verbo(pasado,singular,segunda,['mostrabas'|S],S,['showed'|T],T).     
verbo(pasado,singular,tercera,['mostraba'|S],S,['showed'|T],T).     
verbo(pasado,plural,primera,['mostrabamos'|S],S,['showed'|T],T).       
verbo(pasado,plural,segunda,['mostrabais'|S],S,['showed'|T],T).       
verbo(pasado,plural,tercera,['mostraban'|S],S,['showed'|T],T).       

verbo(pasado,singular,primera,['empezaba'|S],S,['started'|T],T).     
verbo(pasado,singular,segunda,['empezabas'|S],S,['started'|T],T).     
verbo(pasado,singular,tercera,['empezaba'|S],S,['started'|T],T).     
verbo(pasado,plural,primera,['empezamos'|S],S,['started'|T],T).       
verbo(pasado,plural,segunda,['empezabais'|S],S,['started'|T],T).       
verbo(pasado,plural,tercera,['empezaban'|S],S,['started'|T],T).       

% 40

verbo(pasado,singular,primera,['agarraba'|S],S,['took'|T],T).     
verbo(pasado,singular,segunda,['agarrabas'|S],S,['took'|T],T).     
verbo(pasado,singular,tercera,['agarraba'|S],S,['took'|T],T).     
verbo(pasado,plural,primera,['agarrabamos'|S],S,['took'|T],T).       
verbo(pasado,plural,segunda,['agarrabais'|S],S,['took'|T],T).       
verbo(pasado,plural,tercera,['agarraban'|S],S,['took'|T],T).       

verbo(pasado,singular,primera,['hablaba'|S],S,['talked'|T],T).     
verbo(pasado,singular,segunda,['hablabas'|S],S,['talked'|T],T).     
verbo(pasado,singular,tercera,['hablaba'|S],S,['talked'|T],T).     
verbo(pasado,plural,primera,['hablabamos'|S],S,['talked'|T],T).       
verbo(pasado,plural,segunda,['hablabais'|S],S,['talked'|T],T).       
verbo(pasado,plural,tercera,['hablaban'|S],S,['talked'|T],T).       

verbo(pasado,singular,primera,['contaba'|S],S,['told'|T],T).     
verbo(pasado,singular,segunda,['contabas'|S],S,['told'|T],T).     
verbo(pasado,singular,tercera,['contaba'|S],S,['told'|T],T).     
verbo(pasado,plural,primera,['contabamos'|S],S,['told'|T],T).       
verbo(pasado,plural,segunda,['contabais'|S],S,['told'|T],T).       
verbo(pasado,plural,tercera,['contaban'|S],S,['told'|T],T).       

verbo(pasado,singular,primera,['pensaba'|S],S,['thought'|T],T).     
verbo(pasado,singular,segunda,['pensabas'|S],S,['thought'|T],T).     
verbo(pasado,singular,tercera,['pensaba'|S],S,['thought'|T],T).     
verbo(pasado,plural,primera,['pensabamos'|S],S,['thought'|T],T).       
verbo(pasado,plural,segunda,['pensabais'|S],S,['thought'|T],T).       
verbo(pasado,plural,tercera,['pensaban'|S],S,['thought'|T],T).       

verbo(pasado,singular,primera,['itentaba'|S],S,['tried'|T],T).     
verbo(pasado,singular,segunda,['intentabas'|S],S,['tried'|T],T).     
verbo(pasado,singular,tercera,['intentaban'|S],S,['tried'|T],T).     
verbo(pasado,plural,primera,['intentamos'|S],S,['tried'|T],T).       
verbo(pasado,plural,segunda,['intentais'|S],S,['tried'|T],T).       
verbo(pasado,plural,tercera,['intentaban'|S],S,['tried'|T],T).       

verbo(pasado,singular,primera,['giraba'|S],S,['turned'|T],T).     
verbo(pasado,singular,segunda,['girabas'|S],S,['turned'|T],T).     
verbo(pasado,singular,tercera,['giraba'|S],S,['turned'|T],T).     
verbo(pasado,plural,primera,['girabamos'|S],S,['turned'|T],T).       
verbo(pasado,plural,segunda,['girabais'|S],S,['turned'|T],T).       
verbo(pasado,plural,tercera,['giraban'|S],S,['turned'|T],T).       

verbo(pasado,singular,primera,['usaba'|S],S,['used'|T],T).     
verbo(pasado,singular,segunda,['usabas'|S],S,['used'|T],T).     
verbo(pasado,singular,tercera,['usaba'|S],S,['used'|T],T).     
verbo(pasado,plural,primera,['usabamos'|S],S,['used'|T],T).       
verbo(pasado,plural,segunda,['usabais'|S],S,['used'|T],T).       
verbo(pasado,plural,tercera,['usaban'|S],S,['used'|T],T).       

verbo(pasado,singular,primera,['queria'|S],S,['wanted'|T],T).     
verbo(pasado,singular,segunda,['querias'|S],S,['wanted'|T],T).     
verbo(pasado,singular,tercera,['queria'|S],S,['wanted'|T],T).     
verbo(pasado,plural,primera,['queriamos'|S],S,['wanted'|T],T).       
verbo(pasado,plural,segunda,['queriais'|S],S,['wanted'|T],T).       
verbo(pasado,plural,tercera,['querian'|S],S,['wanted'|T],T).       

verbo(pasado,singular,primera,['caminaba'|S],S,['walked'|T],T).     
verbo(pasado,singular,segunda,['caminabas'|S],S,['walked'|T],T).     
verbo(pasado,singular,tercera,['caminaba'|S],S,['walked'|T],T).     
verbo(pasado,plural,primera,['caminabamos'|S],S,['walked'|T],T).       
verbo(pasado,plural,segunda,['caminais'|S],S,['walked'|T],T).       
verbo(pasado,plural,tercera,['cominaban'|S],S,['walked'|T],T).       

verbo(pasado,singular,primera,['trabajaba'|S],S,['worked'|T],T).     
verbo(pasado,singular,segunda,['trabajabas'|S],S,['worked'|T],T).     
verbo(pasado,singular,tercera,['trabajaba'|S],S,['worked'|T],T).     
verbo(pasado,plural,primera,['trabajabamos'|S],S,['worked'|T],T).       
verbo(pasado,plural,segunda,['trabajabais'|S],S,['worked'|T],T).       
verbo(pasado,plural,tercera,['trabajaban'|S],S,['worked'|T],T).       

% 50

%---------------------------------------------------------------

adjetivo(singular,masculino,['rojo'|S],S,['red'|T],T).
adjetivo(singular,femenino,['roja'|S],S,['red'|T],T).
adjetivo(plural,masculino,['rojos'|S],S,['red'|T],T).
adjetivo(plural,femenino,['rojas'|S],S,['red'|T],T).

adjetivo(singular,masculino,['verde'|S],S,['green'|T],T).
adjetivo(singular,femenino,['verde'|S],S,['green'|T],T).
adjetivo(plural,masculino,['verdes'|S],S,['greeen'|T],T).
adjetivo(plural,femenino,['verdes'|S],S,['green'|T],T).

adjetivo(singular,masculino,['azul'|S],S,['blue'|T],T).
adjetivo(singular,femenino,['azul'|S],S,['blue'|T],T).
adjetivo(plural,masculino,['azules'|S],S,['blue'|T],T).
adjetivo(plural,femenino,['azules'|S],S,['blue'|T],T).

adjetivo(singular,masculino,['negro'|S],S,['black'|T],T).
adjetivo(singular,femenino,['negra'|S],S,['black'|T],T).
adjetivo(plural,masculino,['negros'|S],S,['black'|T],T).
adjetivo(plural,femenino,['negras'|S],S,['black'|T],T).

adjetivo(singular,masculino,['blanco'|S],S,['white'|T],T).
adjetivo(singular,femenino,['blanca'|S],S,['white'|T],T).
adjetivo(plural,masculino,['blancos'|S],S,['white'|T],T).
adjetivo(plural,femenino,['blancas'|S],S,['white'|T],T).

adjetivo(singular,masculino,['pequeño'|S],S,['little'|T],T).
adjetivo(singular,femenino,['pequeña'|S],S,['little'|T],T).
adjetivo(plural,masculino,['pequeños'|S],S,['little'|T],T).
adjetivo(plural,femenino,['pequeñas'|S],S,['little'|T],T).

adjetivo(singular,masculino,['bueno'|S],S,['good'|T],T).
adjetivo(singular,femenino,['buena'|S],S,['good'|T],T).
adjetivo(plural,masculino,['buenos'|S],S,['good'|T],T).
adjetivo(plural,femenino,['buenas'|S],S,['good'|T],T).

adjetivo(singular,masculino,['malo'|S],S,['bad'|T],T).
adjetivo(singular,femenino,['mala'|S],S,['bad'|T],T).
adjetivo(plural,masculino,['malos'|S],S,['bad'|T],T).
adjetivo(plural,femenino,['malas'|S],S,['bad'|T],T).

adjetivo(singular,masculino,['grande'|S],S,['large'|T],T).
adjetivo(singular,femenino,['grande'|S],S,['large'|T],T).
adjetivo(plural,masculino,['grandes'|S],S,['lage'|T],T).
adjetivo(plural,femenino,['grandes'|S],S,['large'|T],T).

adjetivo(singular,masculino,['pequeno'|S],S,['small'|T],T).
adjetivo(singular,femenino,['pequena'|S],S,['small'|T],T).
adjetivo(plural,masculino,['pequenos'|S],S,['small'|T],T).
adjetivo(plural,femenino,['pequenas'|S],S,['small'|T],T).

%10

adjetivo(singular,masculino,['largo'|S],S,['long'|T],T).
adjetivo(singular,femenino,['larga'|S],S,['long'|T],T).
adjetivo(plural,masculino,['largos'|S],S,['long'|T],T).
adjetivo(plural,femenino,['largas'|S],S,['long'|T],T).

adjetivo(singular,masculino,['corto'|S],S,['short'|T],T).
adjetivo(singular,femenino,['corta'|S],S,['short'|T],T).
adjetivo(plural,masculino,['cortos'|S],S,['short'|T],T).
adjetivo(plural,femenino,['cortas'|S],S,['short'|T],T).

adjetivo(singular,masculino,['grueso'|S],S,['thick'|T],T).
adjetivo(singular,femenino,['gruesa'|S],S,['thick'|T],T).
adjetivo(plural,masculino,['gruesos'|S],S,['thick'|T],T).
adjetivo(plural,femenino,['gruesas'|S],S,['thick'|T],T).

adjetivo(singular,masculino,['estrecho'|S],S,['narrow'|T],T).
adjetivo(singular,femenino,['estrecha'|S],S,['narrow'|T],T).
adjetivo(plural,masculino,['estrechos'|S],S,['narrow'|T],T).
adjetivo(plural,femenino,['estrechas'|S],S,['narrow'|T],T).

adjetivo(singular,masculino,['profundo'|S],S,['deep'|T],T).
adjetivo(singular,femenino,['profunda'|S],S,['deep'|T],T).
adjetivo(plural,masculino,['profundos'|S],S,['deep'|T],T).
adjetivo(plural,femenino,['profundas'|S],S,['deep'|T],T).

adjetivo(singular,masculino,['entero'|S],S,['whole'|T],T).
adjetivo(singular,femenino,['entera'|S],S,['whole'|T],T).
adjetivo(plural,masculino,['enteros'|S],S,['whole'|T],T).
adjetivo(plural,femenino,['enteras'|S],S,['whole'|T],T).

adjetivo(singular,masculino,['bajo'|S],S,['low'|T],T).
adjetivo(singular,femenino,['baja'|S],S,['low'|T],T).
adjetivo(plural,masculino,['bajos'|S],S,['low'|T],T).
adjetivo(plural,femenino,['bajas'|S],S,['low'|T],T).

adjetivo(singular,masculino,['alto'|S],S,['high'|T],T).
adjetivo(singular,femenino,['alta'|S],S,['high'|T],T).
adjetivo(plural,masculino,['altos'|S],S,['high'|T],T).
adjetivo(plural,femenino,['altas'|S],S,['high'|T],T).

adjetivo(singular,masculino,['cerca'|S],S,['near'|T],T).
adjetivo(singular,femenino,['cerca'|S],S,['near'|T],T).
adjetivo(plural,masculino,['cerca'|S],S,['near'|T],T).
adjetivo(plural,femenino,['cerca'|S],S,['near'|T],T).

adjetivo(singular,masculino,['lejos'|S],S,['far'|T],T).
adjetivo(singular,femenino,['lejos'|S],S,['far'|T],T).
adjetivo(plural,masculino,['lejos'|S],S,['far'|T],T).
adjetivo(plural,femenino,['lejos'|S],S,['far'|T],T).

% 20

adjetivo(singular,masculino,['rapido'|S],S,['quick'|T],T).
adjetivo(singular,femenino,['rapida'|S],S,['quick'|T],T).
adjetivo(plural,masculino,['rapidos'|S],S,['quick'|T],T).
adjetivo(plural,femenino,['rapidas'|S],S,['quick'|T],T).

adjetivo(singular,masculino,['lento'|S],S,['slow'|T],T).
adjetivo(singular,femenino,['lenta'|S],S,['slow'|T],T).
adjetivo(plural,masculino,['lentos'|S],S,['slow'|T],T).
adjetivo(plural,femenino,['lentas'|S],S,['slow'|T],T).

adjetivo(singular,masculino,['temprano'|S],S,['early'|T],T).
adjetivo(singular,femenino,['temprana'|S],S,['early'|T],T).
adjetivo(plural,masculino,['tempranos'|S],S,['early'|T],T).
adjetivo(plural,femenino,['tempranas'|S],S,['early'|T],T).

adjetivo(singular,masculino,['tarde'|S],S,['late'|T],T).
adjetivo(singular,femenino,['tarde'|S],S,['late'|T],T).
adjetivo(plural,masculino,['tardes'|S],S,['late'|T],T).
adjetivo(plural,femenino,['tardes'|S],S,['late'|T],T).

adjetivo(singular,masculino,[''|S],S,['bright'|T],T).
adjetivo(singular,femenino,[''|S],S,['bright'|T],T).
adjetivo(plural,masculino,['s'|S],S,['bright'|T],T).
adjetivo(plural,femenino,['s'|S],S,['bright'|T],T).

adjetivo(singular,masculino,['oscuro'|S],S,['dark'|T],T).
adjetivo(singular,femenino,['oscura'|S],S,['dark'|T],T).
adjetivo(plural,masculino,['oscuros'|S],S,['dark'|T],T).
adjetivo(plural,femenino,['oscuras'|S],S,['dark'|T],T).

adjetivo(singular,masculino,['nubaldo'|S],S,['cloudy'|T],T).
adjetivo(singular,femenino,['nublada'|S],S,['cloudy'|T],T).
adjetivo(plural,masculino,['nublados'|S],S,['cloudy'|T],T).
adjetivo(plural,femenino,['nubladas'|S],S,['cloudy'|T],T).

adjetivo(singular,masculino,['soleado'|S],S,['sunny'|T],T).
adjetivo(singular,femenino,['soleada'|S],S,['sunny'|T],T).
adjetivo(plural,masculino,['soleados'|S],S,['sunny'|T],T).
adjetivo(plural,femenino,['soleadas'|S],S,['sunny'|T],T).

adjetivo(singular,masculino,['claro'|S],S,['clear'|T],T).
adjetivo(singular,femenino,['clara'|S],S,['clear'|T],T).
adjetivo(plural,masculino,['claros'|S],S,['clear'|T],T).
adjetivo(plural,femenino,['claras'|S],S,['clear'|T],T).

adjetivo(singular,masculino,['caliente'|S],S,['hot'|T],T).
adjetivo(singular,femenino,['caliente'|S],S,['hot'|T],T).
adjetivo(plural,masculino,['calientes'|S],S,['hot'|T],T).
adjetivo(plural,femenino,['calientes'|S],S,['hot'|T],T).

% 30

adjetivo(singular,masculino,['frio'|S],S,['cold'|T],T).
adjetivo(singular,femenino,['fria'|S],S,['cold'|T],T).
adjetivo(plural,masculino,['frios'|S],S,['cold'|T],T).
adjetivo(plural,femenino,['frias'|S],S,['cold'|T],T).

adjetivo(singular,masculino,['seco'|S],S,['dry'|T],T).
adjetivo(singular,femenino,['seca'|S],S,['dry'|T],T).
adjetivo(plural,masculino,['secos'|S],S,['dry'|T],T).
adjetivo(plural,femenino,['secas'|S],S,['dry'|T],T).

adjetivo(singular,masculino,['mojado'|S],S,['wet'|T],T).
adjetivo(singular,femenino,['mojada'|S],S,['wet'|T],T).
adjetivo(plural,masculino,['mojados'|S],S,['wet'|T],T).
adjetivo(plural,femenino,['mojadas'|S],S,['wet'|T],T).

adjetivo(singular,masculino,['duro'|S],S,['hard'|T],T).
adjetivo(singular,femenino,['dura'|S],S,['hard'|T],T).
adjetivo(plural,masculino,['duros'|S],S,['hard'|T],T).
adjetivo(plural,femenino,['duras'|S],S,['hard'|T],T).

adjetivo(singular,masculino,['suave'|S],S,['soft'|T],T).
adjetivo(singular,femenino,['suave'|S],S,['soft'|T],T).
adjetivo(plural,masculino,['suaves'|S],S,['soft'|T],T).
adjetivo(plural,femenino,['suaves'|S],S,['soft'|T],T).

adjetivo(singular,masculino,['pesado'|S],S,['heavy'|T],T).
adjetivo(singular,femenino,['pesada'|S],S,['heavy'|T],T).
adjetivo(plural,masculino,['pesados'|S],S,['heavy'|T],T).
adjetivo(plural,femenino,['pesadas'|S],S,['heavy'|T],T).

adjetivo(singular,masculino,['liviano'|S],S,['light'|T],T).
adjetivo(singular,femenino,['liviana'|S],S,['light'|T],T).
adjetivo(plural,masculino,['livianos'|S],S,['light'|T],T).
adjetivo(plural,femenino,['livianas'|S],S,['light'|T],T).

adjetivo(singular,masculino,['fuerte'|S],S,['strong'|T],T).
adjetivo(singular,femenino,['fuerte'|S],S,['strong'|T],T).
adjetivo(plural,masculino,['fuertes'|S],S,['strong'|T],T).
adjetivo(plural,femenino,['fuertes'|S],S,['strong'|T],T).

adjetivo(singular,masculino,['debil'|S],S,['weak'|T],T).
adjetivo(singular,femenino,['debil'|S],S,['weak'|T],T).
adjetivo(plural,masculino,['debiles'|S],S,['weak'|T],T).
adjetivo(plural,femenino,['debiles'|S],S,['weak'|T],T).

adjetivo(singular,masculino,['limpio'|S],S,['clean'|T],T).
adjetivo(singular,femenino,['limpia'|S],S,['clean'|T],T).
adjetivo(plural,masculino,['limpios'|S],S,['clean'|T],T).
adjetivo(plural,femenino,['limpias'|S],S,['clean'|T],T).

% 40

adjetivo(singular,masculino,['sucio'|S],S,['dirty'|T],T).
adjetivo(singular,femenino,['sucia'|S],S,['dirty'|T],T).
adjetivo(plural,masculino,['sucios'|S],S,['dirty'|T],T).
adjetivo(plural,femenino,['sucias'|S],S,['dirty'|T],T).

adjetivo(singular,masculino,['vacio'|S],S,['empty'|T],T).
adjetivo(singular,femenino,['vacia'|S],S,['empty'|T],T).
adjetivo(plural,masculino,['vacios'|S],S,['empty'|T],T).
adjetivo(plural,femenino,['vacias'|S],S,['empty'|T],T).

adjetivo(singular,masculino,['lleno'|S],S,['full'|T],T).
adjetivo(singular,femenino,['llena'|S],S,['full'|T],T).
adjetivo(plural,masculino,['llenos'|S],S,['full'|T],T).
adjetivo(plural,femenino,['llenas'|S],S,['full'|T],T).

adjetivo(singular,masculino,['sediento'|S],S,['thristy'|T],T).
adjetivo(singular,femenino,['sedienta'|S],S,['thristy'|T],T).
adjetivo(plural,masculino,['sedientos'|S],S,['thristy'|T],T).
adjetivo(plural,femenino,['sedientas'|S],S,['thristy'|T],T).

adjetivo(singular,masculino,['hambriento'|S],S,['hungry'|T],T).
adjetivo(singular,femenino,['hambrienta'|S],S,['hungry'|T],T).
adjetivo(plural,masculino,['hambrientos'|S],S,['hungry'|T],T).
adjetivo(plural,femenino,['hambrientas'|S],S,['hungry'|T],T).

adjetivo(singular,masculino,['gordo'|S],S,['fat'|T],T).
adjetivo(singular,femenino,['gorda'|S],S,['fat'|T],T).
adjetivo(plural,masculino,['gordos'|S],S,['fat'|T],T).
adjetivo(plural,femenino,['gordas'|S],S,['fat'|T],T).

adjetivo(singular,masculino,['delgado'|S],S,['skinny'|T],T).
adjetivo(singular,femenino,['delgada'|S],S,['skinny'|T],T).
adjetivo(plural,masculino,['delgados'|S],S,['skinny'|T],T).
adjetivo(plural,femenino,['delgadas'|S],S,['skinny'|T],T).

adjetivo(singular,masculino,['viejo'|S],S,['old'|T],T).
adjetivo(singular,femenino,['vieja'|S],S,['old'|T],T).
adjetivo(plural,masculino,['viejos'|S],S,['old'|T],T).
adjetivo(plural,femenino,['viejas'|S],S,['old'|T],T).

adjetivo(singular,masculino,['joven'|S],S,['young'|T],T).
adjetivo(singular,femenino,['joven'|S],S,['young'|T],T).
adjetivo(plural,masculino,['jovenes'|S],S,['young'|T],T).
adjetivo(plural,femenino,['jovenes'|S],S,['young'|T],T).

adjetivo(singular,masculino,['brillante'|S],S,['shiny'|T],T).
adjetivo(singular,femenino,['brillante'|S],S,['shiny'|T],T).
adjetivo(plural,masculino,['brillante'|S],S,['shiny'|T],T).
adjetivo(plural,femenino,['brillante'|S],S,['shiny'|T],T).

% 50

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