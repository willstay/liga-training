--liquibase formatted sql logicalFilePath:V1_010_STUDENT.sql
--changeset sanasov:1.10 runOnChange:true context:prod
ALTER TABLE liga.student ADD COLUMN department_id BIGINT;
