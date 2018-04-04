--liquibase formatted sql logicalFilePath:V1_008_EMPLOYEE_DATA.sql
--changeset sanasov:1.8 runOnChange:true context:prod

INSERT INTO liga.employee ( id,  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES(1, 'Владимир Николаевич Чубариков', 'MALE', 1, 'Доктор наук','Dean', to_timestamp('1951-09-05', 'yyyy-mm-dd'));

INSERT INTO liga.employee ( id,  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES(2, 'Сысоев Николай Николаевич', 'MALE', 2, 'Доктор наук','Dean', to_timestamp('1949-11-15', 'yyyy-mm-dd'));

INSERT INTO liga.employee ( id,  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES(3, 'Тучков Иван Иванович', 'MALE', 3, 'Доктор наук','Dean', to_timestamp('1956-09-13', 'yyyy-mm-dd'));


INSERT INTO liga.employee ( id,  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES(4, 'Комбаров Анатолий Петрович', 'MALE', 1, 'Доктор наук','Professor', to_timestamp('1967-03-05', 'yyyy-mm-dd'));

INSERT INTO liga.employee ( id,  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES(5, 'Корнев Андрей Алексеевич', 'MALE', 1, 'Доктор наук','Lecturer', to_timestamp('1971-08-13', 'yyyy-mm-dd'));

INSERT INTO liga.employee ( id,  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES(6, 'Штерн Александр Исаакович', 'MALE', 1, 'Доктор наук','Professor', to_timestamp('1948-06-05', 'yyyy-mm-dd'));


INSERT INTO liga.employee ( id,  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES(7, 'Караваев Владимир Александрович', 'MALE', 2, 'Кандидат наук','Lecturer', to_timestamp('1983-06-15', 'yyyy-mm-dd'));

INSERT INTO liga.employee ( id,  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES(8, 'Тверской Василий Борисович ', 'MALE', 2, 'Доктор наук','Professor', to_timestamp('1967-02-28', 'yyyy-mm-dd'));

INSERT INTO liga.employee ( id,  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES(9, 'Соколов Владимир Андреевич', 'MALE', 2, 'Кандидат наук','Lecturer', to_timestamp('1975-08-07', 'yyyy-mm-dd'));


INSERT INTO liga.employee ( id,  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES(10, 'Гутнова Евгения Владимировна', 'FEMALE', 3, 'Доктор наук','Professor', to_timestamp('1969-10-23', 'yyyy-mm-dd'));

INSERT INTO liga.employee ( id,  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES(11, 'Дыбо Анна Владимировна', 'FEMALE', 3, 'Кандидат наук','Lecturer', to_timestamp('1978-07-10', 'yyyy-mm-dd'));



INSERT INTO liga.employee (fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Соколов Владимир Андреевич', 'MALE', 2, 'BACHELOR','Secretary', to_timestamp('1975-08-07', 'yyyy-mm-dd'));
INSERT INTO liga.employee (fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Гутнова Евгения Владимировна', 'FEMALE', 3, 'MASTER','Secretary', to_timestamp('1969-10-23', 'yyyy-mm-dd'));
INSERT INTO liga.employee (fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Дыбо Анна Владимировна', 'FEMALE', 3, 'BACHELOR','Secretary', to_timestamp('1978-07-10', 'yyyy-mm-dd'));




