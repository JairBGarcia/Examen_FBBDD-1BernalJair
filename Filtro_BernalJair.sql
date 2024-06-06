CREATE TABLE Sede (
	id_sede int primary key,
    num_complejos int,
    presupuesto_complejos decimal(10,2),
    id_complejo int,
    FOREIGN KEY(id_complejo) REFERENCES Complejo(id_complejo)
    );

CREATE TABLE Complejo (
    id_complejo INT PRIMARY KEY,
    nombre VARCHAR(25),
    tipo VARCHAR(50),
    ubicacion VARCHAR(25),
    jefe_organizacion VARCHAR(25),
    area_ocupada DECIMAL(10,2),
    id_equipamiento int,
    foreign key (id_equipamiento) REFERENCES Equipamiento(id_equipamiento)
);


CREATE TABLE Equipamiento(
	id_equipamiento INT PRIMARY KEY,
    nombre VARCHAR(25),
    tipo_equipamiento VARCHAR(25),
    cantidad INT
);


CREATE TABLE Evento (
    id_evento INT PRIMARY KEY,
    fecha DATE,
    duracion TIME,
    participantes INT,
    id_complejo INT,
    FOREIGN KEY (id_complejo) REFERENCES Complejo(id_complejo),
	id_equipamiento INT,
    FOREIGN KEY (id_equipamiento) REFERENCES Equipamiento(id_Equipamiento)
);


CREATE TABLE Comisario (
    id_comisario INT PRIMARY KEY,
    nombre VARCHAR(25),
    rol VARCHAR(50)
);


CREATE TABLE Comisario_Evento (
    id_comisario INT,
    id_evento INT,
    PRIMARY KEY (id_comisario, id_evento),
    FOREIGN KEY (id_comisario) REFERENCES Comisario(id_comisario),
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento)
);

-- Consultas

SELECT * FROM Evento WHERE id_complejo = [id_del_complejo];

SELECT c.nombre, c.rol FROM Comisario c JOIN Comisario_Evento ce ON c.id_comisario = ce.id_comisario WHERE ce.id_evento = [id_del_evento];

SELECT * FROM Evento WHERE fecha BETWEEN [FECHA_INICIO] AND [FECHA_FIN];

SELECT COUNT(DISTINCT id_comisario) AS total_comisarios FROM Comisario_Evento;

SELECT * FROM Complejo WHERE tipo = 'polideportivo' AND area_total > [valor_especifico];

SELECT * FROM Evento WHERE participantes > (SELECT AVG(participantes) FROM Evento);

SELECT e.nombre AS equipamiento FROM Equipamiento e JOIN Evento_Equipamiento ee ON e.id_equipamiento = ee.id_equipamiento WHERE ee.id_evento = [id_del_evento];

SELECT * FROM Evento e JOIN Complejo c ON e.id_complejo = c.id_complejo WHERE c.tipo = 'deportivo' AND c.jefe_organiz = '[nombre_del_jefe]';

SELECT * FROM Complejo WHERE tipo = 'polideportivo' AND id_complejo NOT IN (SELECT DISTINCT id_complejo FROM Evento);

SELECT c.nombre FROM Comisario c WHERE NOT EXISTS (
    SELECT id_evento
    FROM Evento
    WHERE id_evento NOT IN (
        SELECT id_evento
        FROM Comisario_Evento ce
        WHERE ce.id_comisario = c.id_comisario
        AND ce.rol = 'juez'
    )
);

