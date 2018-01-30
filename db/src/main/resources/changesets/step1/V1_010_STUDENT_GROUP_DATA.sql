--liquibase formatted sql logicalFilePath:V1_010_STUDENT_GROUP_DATA.sql
--changeset sanasov:1.10 runOnChange:true context:prod

INSERT INTO liga.student_group (id,  group_number,  department) VALUES (1, 11, "Механико-математический");
INSERT INTO liga.student_group (id,  group_number,  department) VALUES (2, 21, "Механико-математический");
INSERT INTO liga.student_group (id,  group_number,  department) VALUES (3, 31, "Механико-математический");
INSERT INTO liga.student_group (id,  group_number,  department) VALUES (4, 41, "Механико-математический");

INSERT INTO liga.student_group (id,  group_number,  department) VALUES (6, 11, "Физический");
INSERT INTO liga.student_group (id,  group_number,  department) VALUES (7, 21, "Физический");
INSERT INTO liga.student_group (id,  group_number,  department) VALUES (8, 31, "Физический");
INSERT INTO liga.student_group (id,  group_number,  department) VALUES (9, 41, "Физический");

INSERT INTO liga.student_group (id,  group_number,  department) VALUES (11, 11, "Исторический");
INSERT INTO liga.student_group (id,  group_number,  department) VALUES (12, 21, "Исторический");
INSERT INTO liga.student_group (id,  group_number,  department) VALUES (13, 31, "Исторический");
INSERT INTO liga.student_group (id,  group_number,  department) VALUES (14, 41, "Исторический");




