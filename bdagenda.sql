CREATE DATABASE BASEDATOS;
USE BASEDATOS;

DROP TABLE IF EXISTS distritos;
CREATE TABLE distritos
 (idDis                      INT  NOT NULL,
  dis_nombre                     VARCHAR(45) NOT NULL,
  CONSTRAINT distritos_id_Dis_pk PRIMARY KEY (idDis)
 );

DROP TABLE IF EXISTS agenda;
CREATE TABLE agenda
 (codigoper                  VARCHAR(3)  NOT NULL,
  nombre                     VARCHAR(45) NOT NULL,
  apellido                   VARCHAR(45) NOT NULL,
  direccion                  VARCHAR(45),
  telefijo                   VARCHAR(9),
  telefmovi                  VARCHAR(10),
  email                      VARCHAR(30),
  fbc                        VARCHAR(30),
  distrito_id                   INT NOT NULL,
  CONSTRAINT agenda_codigo_per_pk PRIMARY KEY (codigoper),
  CONSTRAINT FK_distrito FOREIGN KEY (distrito_id)
  REFERENCES distritos(idDis)
 );


INSERT INTO distritos VALUES (1, 'Nuevo Chimbote');
INSERT INTO distritos VALUES (2, 'Santa');

INSERT INTO agenda VALUES ('1', 'carlos', 'serna','av. palmeras 145',
'043524875', '942587568','carlos@hotmail.com', 'carlos serna',1);
INSERT INTO agenda VALUES ('2', 'carmen', 'figueroa','av. alamos f-5',
'043154784', '943124578','carmen@hotmail.com', 'carmen figeroa',2);
INSERT INTO agenda VALUES ('3', 'juan', 'perez','av.pacaes',
'043758694', '943582674','juan@hotmail.com', 'juan perez',1);


COMMIT;
