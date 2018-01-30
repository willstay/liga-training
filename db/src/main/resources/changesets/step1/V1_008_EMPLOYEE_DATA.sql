--liquibase formatted sql logicalFilePath:V1_008_EMPLOYEE_DATA.sql
--changeset sanasov:1.8 runOnChange:true context:prod

INSERT INTO liga.employee ( id,  fio,  gender,  faculty,  degree,  employee_position,  birthday)
VALUES(1, "Владимир Николаевич Чубариков", "male", 1, "Ph.D","Dean", "1951-09-05");

INSERT INTO liga.employee ( id,  fio,  gender,  faculty,  degree,  employee_position,  birthday)
VALUES(2, "Сысоев Николай Николаевич", "male", 2, "Ph.D","Dean", "1949-11-15");

INSERT INTO liga.employee ( id,  fio,  gender,  faculty,  degree,  employee_position,  birthday)
VALUES(3, "Тучков Иван Иванович", "male", 3, "Ph.D","Dean", "1956-09-13");


INSERT INTO liga.employee ( id,  fio,  gender,  faculty,  degree,  employee_position,  birthday)
VALUES(4, "Комбаров Анатолий Петрович", "male", 1, "Ph.D","Lecturer", "1967-03-05");

INSERT INTO liga.employee ( id,  fio,  gender,  faculty,  degree,  employee_position,  birthday)
VALUES(5, "Корнев Андрей Алексеевич", "male", 1, "Ph.D","Lecturer", "1971-08-13");

INSERT INTO liga.employee ( id,  fio,  gender,  faculty,  degree,  employee_position,  birthday)
VALUES(6, "Штерн Александр Исаакович", "male", 1, "Ph.D","Lecturer", "1948-06-05");


INSERT INTO liga.employee ( id,  fio,  gender,  faculty,  degree,  employee_position,  birthday)
VALUES(7, "Караваев Владимир Александрович", "male", 2, "PhD","Lecturer", "1983-06-15");

INSERT INTO liga.employee ( id,  fio,  gender,  faculty,  degree,  employee_position,  birthday)
VALUES(8, "Тверской Василий Борисович ", "male", 2, "Ph.D","Lecturer", "1967-02-28");

INSERT INTO liga.employee ( id,  fio,  gender,  faculty,  degree,  employee_position,  birthday)
VALUES(9, "Соколов Владимир Андреевич", "male", 2, "Ph.D","Lecturer", "1975-08-07");


INSERT INTO liga.employee ( id,  fio,  gender,  faculty,  degree,  employee_position,  birthday)
VALUES(10, "Гутнова, Евгения Владимировна", "female", 3, "PhD","Lecturer", "1969-10-23");

INSERT INTO liga.employee ( id,  fio,  gender,  faculty,  degree,  employee_position,  birthday)
VALUES(11, "Дыбо, Анна Владимировна", "female", 3, "PhD","Lecturer", "1978-07-10");




