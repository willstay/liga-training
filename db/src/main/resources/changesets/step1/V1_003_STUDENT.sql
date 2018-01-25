--liquibase formatted sql logicalFilePath:V1_003_STUDENT.sql
--changeset sanasov:1.3 runOnChange:true context:prod
CREATE TABLE liga.student (
  id             BIGSERIAL PRIMARY KEY,
  fisrt_name     VARCHAR(200),
  last_name      VARCHAR(200),
  gender         VARCHAR(100),
  faculty        VARCHAR(100),
  student_group_id   BIGSERIAL,
  birthday       TIMESTAMP NOT NULL
);