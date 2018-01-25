--liquibase formatted sql logicalFilePath:V1_005_EMPLOYEE.sql
--changeset sanasov:1.5 runOnChange:true context:prod

CREATE TABLE liga.employee (
  id             BIGSERIAL PRIMARY KEY,
  fisrt_name     VARCHAR(200),
  last_name      VARCHAR(200),
  gender         VARCHAR(100),
  faculty        VARCHAR(200),
  degree         VARCHAR(200),
  position       VARCHAR(200),
  birthday       TIMESTAMP NOT NULL
);