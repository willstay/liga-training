--liquibase formatted sql logicalFilePath:V1_004_DEPARTMENT.sql
--changeset sanasov:1.4 runOnChange:true context:prod

CREATE TABLE liga.department (
  id                              BIGSERIAL                PRIMARY KEY,
  title                           VARCHAR(200)             NOT NULL,
  address                         VARCHAR(1000)            NOT NULL,
  dean_emplyee_id                 BIGSERIAL UNIQUE,
  foundation_date    TIMESTAMP    DEFAULT now()
);