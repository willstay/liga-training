--liquibase formatted sql logicalFilePath:V1_011_STUDENT.sql
--changeset sanasov:1.11 runOnChange:true context:prod

UPDATE liga.student as st
SET department_id = (SELECT id FROM liga.departmentId WHERE st.department_name = title);