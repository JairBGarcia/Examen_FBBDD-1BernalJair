# Examen_FBBDD-1BernalJair
Basado en los datos obtenidos encontramos que en la problematica encontramos que hacia falta una base de datos para
solventar este problema el cual para su solucion el equipo de trabajo decidio la creacion de 6 tablas donde iban a
estar divididas por los tipos de complejos,la sede, los eventos, los comisarios y el equipamiento.

En cada una de las bases de datos se creo una llave primaria la cual ayudara al reconocimiento de datos mas rapidamenete

SEDE:
  idsede PK
  numcomplejo
  presupuesto
  idcomplejo FK
los 3 atributos a excepcion de presupuesto que esta como decimal, los demas se encuentran declarados como int

COMPLEJO:
idcomplejo PK
nombre
tipo
ubicacion
jefe
areaocupada
idequipamientpo FK
en este caso nombre,tipo,ubicacion,jefe estan como varchar(texto),area lo definimos como un boolean para obtener en la
base de datos respuestas como si o no, y los id estan declarados como int

EVENTO:
idevento PK  
fecha
duracion
participantes
idcomplejo FK
idequipamiento FK
Fecha esta definido como date, duracion como datetime, participantes y los id como int

EQUIPAMIENTO:
idequipamiento
nombre
tipo
cantidad
nombre y tipo definidos como varchar(texto), cantidad y id como int

COMISARIO:
idcomisario
nombre
rol
nombre y rol como varchar(texto) y id como int

COMISARIO_EVENTO:
idcomisarioevent
idevent
idcomosario
idevent
EN este caso todos los id estan definidos como int

##Solucion
Al crear esta base de datos encontramos que la base de datos soluciona el problema propuesto con anterioridad donde 
ademas de solucionarla su uso practico facilita la compresion para cualquier persona capacitada para manejarla.
