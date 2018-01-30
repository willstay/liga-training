--liquibase formatted sql logicalFilePath:V1_003_STUDENT.sql
--changeset sanasov:1.3 runOnChange:true context:prod
CREATE TABLE liga.student (
  id                 BIGSERIAL PRIMARY KEY,
  fio                VARCHAR(400),
  gender             VARCHAR(100),
  faculty            VARCHAR(100),
  student_group_id   BIGSERIAL,
  birthday           TIMESTAMP NOT NULL
);