# Examen_FBBDD-1BernalJair
Basado en los datos obtenidos encontramos que en la problematica encontramos que hacia falta una base de datos para
solventar este problema el cual para su solucion el equipo de trabajo decidio la creacion de 6 tablas donde iban a
estar divididas por los tipos de complejos,la sede, los eventos, los comisarios y el equipamiento.

En cada una de las bases de datos se creo una llave primaria la cual ayudara al reconocimiento de datos mas rapidamenete

SEDE:
  - idsede PK
  - numcomplejo
  - presupuesto
  - idcomplejo FK
los 3 atributos a excepcion de presupuesto que esta como decimal, los demas se encuentran declarados como int

COMPLEJO:
- idcomplejo PK
- nombre
- tipo
- ubicacion
- jefe
- areaocupada
- idequipamientpo FK
en este caso nombre,tipo,ubicacion,jefe estan como varchar(texto),area lo definimos como un boolean para obtener en la
base de datos respuestas como si o no, y los id estan declarados como int

EVENTO:
- idevento PK  
- fecha
- duracion
- participantes
- idcomplejo FK
- idequipamiento FK
Fecha esta definido como date, duracion como datetime, participantes y los id como int

EQUIPAMIENTO:
- idequipamiento
- nombre
- tipo
- cantidad
nombre y tipo definidos como varchar(texto), cantidad y id como int

COMISARIO:
- idcomisario
- nombre
- rol
nombre y rol como varchar(texto) y id como int

COMISARIO_EVENTO:
- idcomisarioevent
- idevent
- idcomosario
- idevent
EN este caso todos los id estan definidos como int

## Relaciones

- Una sede puede tener muchos complejos
- un complejo puede tener varios eventos
- un evento puede tener muchos comisarios
- un comisario puede tener solo un evento
- Los equipamientos pueden ser muchos pero solo pueden estar en un evento
- Los equipamientos pueden ser muchos en varios complejos

## Solucion
Al crear esta base de datos encontramos que la base de datos soluciona el problema propuesto con anterioridad donde 
ademas de solucionarla su uso practico facilita la compresion para cualquier persona capacitada para manejarla.

## Modelo Entidad-Relacion

![Clase UML (1).png](https://prod-files-secure.s3.us-west-2.amazonaws.com/6eeb5a4f-56f0-490d-bce6-1fb2cd2a7e2a/9a8756ef-92ba-48ad-b0b7-1b076bd1fb87/Clase_UML_(1).png)

## Diagrama UML

![Diagrama sin título.drawio.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/6eeb5a4f-56f0-490d-bce6-1fb2cd2a7e2a/be7b4a65-51ba-41a2-a495-f69581a2c216/Diagrama_sin_ttulo.drawio.png)

![Imagen.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/6eeb5a4f-56f0-490d-bce6-1fb2cd2a7e2a/1f6d0038-77be-414a-a4ad-197742bc8be8/Imagen.png)

(Si las imagenes no cargan se encontraran insertadas en una carpeta llamada imagenes donde estaran los diagramas realizados para esta base de datos)
