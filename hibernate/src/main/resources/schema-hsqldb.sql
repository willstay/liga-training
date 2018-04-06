DROP SCHEMA IF EXISTS liga;
CREATE SCHEMA IF NOT EXISTS liga;

CREATE TABLE liga.student (
  id                 INTEGER PRIMARY KEY IDENTITY,
  fio                VARCHAR(400),
  gender             VARCHAR(100),
  department_id      VARCHAR(100),
  course             SMALLINT,
  birthday           TIMESTAMP NOT NULL
);
CREATE TABLE liga.department (
  id                              INTEGER                  PRIMARY KEY IDENTITY,
  title                           VARCHAR(200)             NOT NULL,
  address                         VARCHAR(1000)            NOT NULL,
  foundation_year                 SMALLINT
);
CREATE TABLE liga.employee (
  id             INTEGER PRIMARY KEY IDENTITY,
  fio            VARCHAR(400),
  gender         VARCHAR(100),
  department_id  INTEGER,
  degree         VARCHAR(200),
  position       VARCHAR(200),
  birthday       TIMESTAMP NOT NULL
);