--liquibase formatted sql logicalFilePath:V1_012_STUDENT.sql
--changeset sanasov:1.12 runOnChange:true context:prod

ALTER TABLE liga.student DROP COLUMN department_name;