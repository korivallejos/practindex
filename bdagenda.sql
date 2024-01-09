
CREATE SCHEMA IF NOT EXISTS BASEDATOS;
USE BASEDATOS;

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
  distrito                   INT,
  CONSTRAINT agenda_codigo_per_pk PRIMARY KEY (codigoper)
  CONSTRAINT FK_distrito FOREIGN KEY (idDis)
  REFERENCES Personas(PersonID)
 );

CREATE TABLE distrito
 (idDis                      INT  NOT NULL,
  nombre                     VARCHAR(45) NOT NULL,
  CONSTRAINT distrito_id_Dis_pk PRIMARY KEY (idDis))
 );

INSERT INTO agenda VALUES ('1', 'carlos', 'serna','av. palmeras 145',
'043524875', '942587568','carlos@hotmail.com', 'carlos serna','1');
INSERT INTO agenda VALUES ('2', 'carmen', 'figueroa','av. alamos f-5',
'043154784', '943124578','carmen@hotmail.com', 'carmen figeroa','2');
INSERT INTO agenda VALUES ('3', 'juan', 'perez','av.pacaes',
'043758694', '943582674','juan@hotmail.com', 'juan perez','1');
INSERT INTO agenda VALUES ('4', 'jean', 'ramirez','av.pardo 580',
'043587469', '941748596','jean@hotmail.com', 'jean ramirez','2');
INSERT INTO agenda VALUES ('5', 'melisa', 'cavero','av.huaraz 220',
'043152648', '942121415','melisa@hotmail.com', 'melisa cavero','1');
INSERT INTO agenda VALUES ('6', 'klaus', 'arteaga','av.lima 145',
'048757686', '943332524','klaus@hotmail.com', 'klaus arteaga','1');
INSERT INTO agenda VALUES ('7', 'octavio', 'baldarrago','av.galvez 874',
'043584736', '941747485','octavio585@hotmail.com', 'octavio baldarrago','1');
INSERT INTO agenda VALUES ('8', 'angela', 'suarez','av.pardo 1894',
'043252526', '941741212','angela_humilde@hotmail.com', 'angela suarez','1');
INSERT INTO agenda VALUES ('9', 'antonhy', 'orbegozo','av.palmeras 456',
'043151919', '942321212','antonhyelgozo@hotmail.com', 'antonhy orbegozo','1');
INSERT INTO agenda VALUES ('10', 'giancarlo', 'sarrin','av.huaraz 123',
'043411742', '9744105472','giancarlosarrines@hotmail.com', 'giancarlo sarrin','2');

INSERT INTO distrito VALUES ('1', 'Nuevo Chimbote');
INSERT INTO distrito VALUES ('2', 'Santa');
COMMIT;


