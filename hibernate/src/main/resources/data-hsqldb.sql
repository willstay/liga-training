-- department
INSERT INTO department (title,  address, foundation_year)
VALUES ('Механико-математический', '119991, ГСП-1, Москва, Ленинские горы, МГУ, д.1, Главное здание, механико-математический факультет', 1932);

INSERT INTO department (title,  address, foundation_year)
VALUES ('Физический', '119991, Москва, ГСП-1, Ленинские горы, МГУ, д. 1, стр. 2, Физический факультет', 1933);

INSERT INTO department (title,  address, foundation_year)
VALUES ( 'Исторический', '119992, г. Москва, Ломоносовский проспект, д. 27, корп. 4, Исторический факультет МГУ', 1934);

-- employee
INSERT INTO employee (fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Владимир Николаевич Чубариков', 'MALE', 0, 'Доктор наук','Dean', to_date('1951-09-05', 'YYYY-MM-DD'));

INSERT INTO employee (  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Сысоев Николай Николаевич', 'MALE', 1, 'Доктор наук','Dean', to_date('1949-11-15', 'YYYY-MM-DD'));

INSERT INTO employee (  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Тучков Иван Иванович', 'MALE', 2, 'Доктор наук','Dean', to_date('1956-09-13', 'YYYY-MM-DD'));


INSERT INTO employee (  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Комбаров Анатолий Петрович', 'MALE', 0, 'Доктор наук','Professor', to_date('1967-03-05', 'YYYY-MM-DD'));

INSERT INTO employee (  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Корнев Андрей Алексеевич', 'MALE', 0, 'Доктор наук','Lecturer', to_date('1971-08-13', 'YYYY-MM-DD'));

INSERT INTO employee (  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Штерн Александр Исаакович', 'MALE', 0, 'Доктор наук','Professor', to_date('1948-06-05', 'YYYY-MM-DD'));


INSERT INTO employee (  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Караваев Владимир Александрович', 'MALE', 1, 'Кандидат наук','Lecturer', to_date('1983-06-15', 'YYYY-MM-DD'));

INSERT INTO employee (  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Тверской Василий Борисович ', 'MALE', 1, 'Доктор наук','Professor', to_date('1967-02-28', 'YYYY-MM-DD'));

INSERT INTO employee (  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Соколов Владимир Андреевич', 'MALE', 1, 'Кандидат наук','Lecturer', to_date('1975-08-07', 'YYYY-MM-DD'));


INSERT INTO employee (  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Гутнова Евгения Владимировна', 'FEMALE', 2, 'Доктор наук','Professor', to_date('1969-10-23', 'YYYY-MM-DD'));

INSERT INTO employee (  fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Дыбо Анна Владимировна', 'FEMALE', 2, 'Кандидат наук','Lecturer', to_date('1978-07-10', 'YYYY-MM-DD'));



INSERT INTO employee (fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Соколов Владимир Андреевич', 'MALE', 0, 'BACHELOR','Secretary', to_date('1975-08-07', 'YYYY-MM-DD'));
INSERT INTO employee (fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Гутнова Евгения Владимировна', 'FEMALE', 1, 'MASTER','Secretary', to_date('1969-10-23', 'YYYY-MM-DD'));
INSERT INTO employee (fio,  gender,  department_id,  degree,  position,  birthday)
VALUES('Дыбо Анна Владимировна', 'FEMALE', 2, 'BACHELOR','Secretary', to_date('1978-07-10', 'YYYY-MM-DD'));

-- student


INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Бардашов Данила Романович','MALE', 'Механико-математический', 1, to_date('1996-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Валуева Алена Андреевна','FEMALE', 'Механико-математический', 1, to_date('1995-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Изюмникова Евгения Александровна','FEMALE', 'Механико-математический', 1, to_date('1996-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Казинский Максим Тарасович','MALE', 'Механико-математический', 1, to_date('1996-06-05', 'YYYY-MM-DD'));

INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Чернов Игнат Владимирович','MALE', 'Механико-математический', 2, to_date('1997-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Гайнуллина Галия Тагировна','FEMALE', 'Механико-математический', 2, to_date('1997-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Лещенко Валентина Андреевна','FEMALE', 'Механико-математический', 2, to_date('1997-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Руденко Анна Юрьевна','FEMALE', 'Механико-математический', 2, to_date('1994-06-05', 'YYYY-MM-DD'));

INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Шопина Ольга Владимировна','FEMALE', 'Механико-математический', 3, to_date('1998-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Белик Анна Дмитриевна','FEMALE', 'Механико-математический', 3, to_date('1998-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Дубровская Татьяна Валерьевна','FEMALE', 'Механико-математический', 3, to_date('1997-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Иовчева Анастасия Дмитриевна','FEMALE', 'Механико-математический', 3, to_date('1998-06-05', 'YYYY-MM-DD'));

INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Кравченко Елена Игоревна','FEMALE', 'Механико-математический', 4, to_date('1996-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Лисова Александра Дмитриевна','FEMALE', 'Механико-математический', 4, to_date('1999-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Маккавеев Евгений Петрович','MALE', 'Механико-математический', 4, to_date('1999-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Михайлова Дарья Владимировна','FEMALE', 'Механико-математический', 4, to_date('1998-06-05', 'YYYY-MM-DD'));



INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Пискарева Вероника Максимовна','FEMALE', 'Физический', 1, to_date('1995-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Рудик Наталья Игоревна','FEMALE', 'Физический', 1, to_date('1995-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Узор Михаил Алексеевич','MALE', 'Физический', 1, to_date('1995-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Фомичева Дарья Владимировна','FEMALE', 'Физический', 1, to_date('1996-06-05', 'YYYY-MM-DD'));

INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Щмелев Леонид Алексеевич','MALE', 'Физический', 2, to_date('1996-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Безбердая Лилия Александровна','FEMALE', 'Физический', 2, to_date('1996-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Гильманов Владислав Раулевич','MALE', 'Физический', 2, to_date('1996-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Капустина Ирина Сергеевна','FEMALE', 'Физический', 2, to_date('1996-06-05', 'YYYY-MM-DD'));

INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Каршигиева Аида Садуокасовна','FEMALE', 'Физический', 3, to_date('1997-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Козачук Мария Никитична','FEMALE', 'Физический', 3, to_date('1996-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Мальцова Полина Игоревна','FEMALE', 'Физический', 3, to_date('1996-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Папкина Алена Эдуардовна','FEMALE', 'Физический', 3, to_date('1997-06-05', 'YYYY-MM-DD'));

INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Турлова Екатерина Олеговна','FEMALE', 'Физический', 4, to_date('1998-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Гаджикеримова Анжела Юрьевна','FEMALE', 'Физический', 4, to_date('1998-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Енчилик Полина Романовна','FEMALE', 'Физический', 4, to_date('1999-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Козган Мирас Ерланович','MALE', 'Физический', 4, to_date('1995-06-05', 'YYYY-MM-DD'));




INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Котвица Мария Александровна','FEMALE', 'Исторический', 1, to_date('1995-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Кузьминская (Кислякова) Наталья Юрьевна','FEMALE', 'Исторический', 1, to_date('1995-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Лобанов Алексей Александрович','MALE', 'Исторический', 1, to_date('1995-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Рыжов Александр Владимирович','MALE', 'Исторический', 1, to_date('1995-06-05', 'YYYY-MM-DD'));

INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Сорокина Ксения Игоревна','FEMALE', 'Исторический', 2, to_date('1996-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Шестова Елизавета Владимировна','FEMALE', 'Исторический', 2, to_date('1996-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Васильчук Джессика Юрьевна','FEMALE', 'Исторический', 2, to_date('1996-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Гаврилова Валентина Игоревна','FEMALE', 'Исторический', 2, to_date('1996-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Костин Александр Сергеевич','MALE', 'Исторический', 2, to_date('1996-06-05', 'YYYY-MM-DD'));

INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Глиген Полина Леонидовна','FEMALE', 'Исторический', 3, to_date('1997-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Доценко Александр Михайлович','MALE', 'Исторический', 3, to_date('1997-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Еманов Константин Владимирович','MALE', 'Исторический', 3, to_date('1997-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Ермолаева Евгения Владимировна','FEMALE', 'Исторический', 3, to_date('1997-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Жданов Павел Павлович','MALE', 'Исторический', 3, to_date('1997-06-05', 'YYYY-MM-DD'));

INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Волков	Дмитрий	Сергеевич','MALE', 'Исторический', 4, to_date('1998-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Ермакова	Арина	Александровна','FEMALE', 'Исторический', 4, to_date('1998-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Лисянский	Игорь	Владимирович','MALE', 'Исторический', 4, to_date('1998-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Морозова	Анастасия	Олеговна','FEMALE', 'Исторический', 4, to_date('1999-06-05', 'YYYY-MM-DD'));
INSERT INTO student (fio, gender, department_id, course, birthday)
VALUES('Никитухина	Валентина	Николаевна','FEMALE', 'Исторический', 4, to_date('1999-06-05', 'YYYY-MM-DD'));

ALTER TABLE student ADD COLUMN department_temp BIGINT;

UPDATE student as st
SET department_temp = (SELECT id FROM department WHERE st.department_id = title);

ALTER TABLE student DROP COLUMN department_id;
ALTER TABLE student ADD COLUMN department_id BIGINT;

UPDATE student
SET department_id = department_temp;

ALTER TABLE student DROP COLUMN department_temp;

