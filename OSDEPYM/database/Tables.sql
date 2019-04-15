CREATE TABLE MOTIVOS (
    ID_MOTIVO			int				NOT NULL	IDENTITY	PRIMARY KEY,
	ETIQUETA			varchar(100)	NOT NULL,
);

CREATE TABLE CATEGORIAS (
    ID_CATEGORIA		int				NOT NULL	IDENTITY	PRIMARY KEY,
    ETIQUETA			varchar(100)	NOT NULL
);

CREATE TABLE MOTIVOS_CATEGORIAS (
	ID_MOT_CAT			int				NOT NULL	IDENTITY	PRIMARY KEY,
    ID_MOTIVO			int				NOT NULL	FOREIGN KEY REFERENCES MOTIVOS(ID_MOTIVO),
    ID_CATEGORIA		int				NULL		FOREIGN KEY REFERENCES CATEGORIAS(ID_CATEGORIA),
	CORREO				varchar(100)	NOT NULL
);

CREATE SEQUENCE contacto_seq
  AS INT                  -- DATA TIPE
  START WITH 1            -- EMPIEZA EN 1
  INCREMENT BY 1          -- SE INCREMENTA DE A 1
  MINVALUE 1              -- VALOR MINIMO 1
  MAXVALUE 999999         -- VALOR MAXIMO 999999
  CYCLE;                  -- CUANDO LLEGA AL NUMERO MAXIMO SE REINICIA LA SEQUENCIA
  
CREATE TABLE CONTACTOS (
    ID_CONTACTO			int				NOT NULL	IDENTITY	PRIMARY KEY,
	ID_TRAMITE			varchar(14)		NOT NULL,
	ID_AFILIADO			varchar(30)		NOT NULL,
	ID_MOTIVO			int				NOT NULL,
	ID_CATEGORIA		int,
	NOMBRE_COMPLETO     varchar(100)	NOT NULL,
	COMENTARIO			varchar(1100)	NOT NULL,
	FECHA_CREACION		date            NOT NULL,
	CORREO				varchar(255)	NOT NULL,
);
