--liquibase formatted sql logicalFilePath:V1_006_STUDENT_GROUP.sql
--changeset sanasov:1.5 runOnChange:true context:prod

CREATE TABLE liga.student_group (
  id             BIGSERIAL PRIMARY KEY,
  group_number   VARCHAR(200),
  department     VARCHAR(200)
);