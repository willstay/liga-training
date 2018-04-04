--liquibase formatted sql logicalFilePath:V1_009_STUDENT_DATA.sql
--changeset sanasov:1.9 runOnChange:true context:prod

INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Бардашов Данила Романович','MALE', 'Механико-математический', 1, to_timestamp('1996-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Валуева Алена Андреевна','FEMALE', 'Механико-математический', 1, to_timestamp('1995-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Изюмникова Евгения Александровна','FEMALE', 'Механико-математический', 1, to_timestamp('1996-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Казинский Максим Тарасович','MALE', 'Механико-математический', 1, to_timestamp('1996-06-05', 'yyyy-mm-dd'));

INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Чернов Игнат Владимирович','MALE', 'Механико-математический', 2, to_timestamp('1997-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Гайнуллина Галия Тагировна','FEMALE', 'Механико-математический', 2, to_timestamp('1997-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Лещенко Валентина Андреевна','FEMALE', 'Механико-математический', 2, to_timestamp('1997-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Руденко Анна Юрьевна','FEMALE', 'Механико-математический', 2, to_timestamp('1994-06-05', 'yyyy-mm-dd'));

INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Шопина Ольга Владимировна','FEMALE', 'Механико-математический', 3, to_timestamp('1998-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Белик Анна Дмитриевна','FEMALE', 'Механико-математический', 3, to_timestamp('1998-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Дубровская Татьяна Валерьевна','FEMALE', 'Механико-математический', 3, to_timestamp('1997-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Иовчева Анастасия Дмитриевна','FEMALE', 'Механико-математический', 3, to_timestamp('1998-06-05', 'yyyy-mm-dd'));

INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Кравченко Елена Игоревна','FEMALE', 'Механико-математический', 4, to_timestamp('1996-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Лисова Александра Дмитриевна','FEMALE', 'Механико-математический', 4, to_timestamp('1999-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Маккавеев Евгений Петрович','MALE', 'Механико-математический', 4, to_timestamp('1999-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Михайлова Дарья Владимировна','FEMALE', 'Механико-математический', 4, to_timestamp('1998-06-05', 'yyyy-mm-dd'));



INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Пискарева Вероника Максимовна','FEMALE', 'Физический', 1, to_timestamp('1995-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Рудик Наталья Игоревна','FEMALE', 'Физический', 1, to_timestamp('1995-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Узор Михаил Алексеевич','MALE', 'Физический', 1, to_timestamp('1995-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Фомичева Дарья Владимировна','FEMALE', 'Физический', 1, to_timestamp('1996-06-05', 'yyyy-mm-dd'));

INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Щмелев Леонид Алексеевич','MALE', 'Физический', 2, to_timestamp('1996-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Безбердая Лилия Александровна','FEMALE', 'Физический', 2, to_timestamp('1996-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Гильманов Владислав Раулевич','MALE', 'Физический', 2, to_timestamp('1996-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Капустина Ирина Сергеевна','FEMALE', 'Физический', 2, to_timestamp('1996-06-05', 'yyyy-mm-dd'));

INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Каршигиева Аида Садуокасовна','FEMALE', 'Физический', 3, to_timestamp('1997-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Козачук Мария Никитична','FEMALE', 'Физический', 3, to_timestamp('1996-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Мальцова Полина Игоревна','FEMALE', 'Физический', 3, to_timestamp('1996-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Папкина Алена Эдуардовна','FEMALE', 'Физический', 3, to_timestamp('1997-06-05', 'yyyy-mm-dd'));

INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Турлова Екатерина Олеговна','FEMALE', 'Физический', 4, to_timestamp('1998-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Гаджикеримова Анжела Юрьевна','FEMALE', 'Физический', 4, to_timestamp('1998-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Енчилик Полина Романовна','FEMALE', 'Физический', 4, to_timestamp('1999-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Козган Мирас Ерланович','MALE', 'Физический', 4, to_timestamp('1995-06-05', 'yyyy-mm-dd'));




INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Котвица Мария Александровна','FEMALE', 'Исторический', 1, to_timestamp('1995-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Кузьминская (Кислякова) Наталья Юрьевна','FEMALE', 'Исторический', 1, to_timestamp('1995-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Лобанов Алексей Александрович','MALE', 'Исторический', 1, to_timestamp('1995-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Рыжов Александр Владимирович','MALE', 'Исторический', 1, to_timestamp('1995-06-05', 'yyyy-mm-dd'));

INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Сорокина Ксения Игоревна','FEMALE', 'Исторический', 2, to_timestamp('1996-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Шестова Елизавета Владимировна','FEMALE', 'Исторический', 2, to_timestamp('1996-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Васильчук Джессика Юрьевна','FEMALE', 'Исторический', 2, to_timestamp('1996-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Гаврилова Валентина Игоревна','FEMALE', 'Исторический', 2, to_timestamp('1996-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Костин Александр Сергеевич','MALE', 'Исторический', 2, to_timestamp('1996-06-05', 'yyyy-mm-dd'));

INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Глиген Полина Леонидовна','FEMALE', 'Исторический', 3, to_timestamp('1997-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Доценко Александр Михайлович','MALE', 'Исторический', 3, to_timestamp('1997-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Еманов Константин Владимирович','MALE', 'Исторический', 3, to_timestamp('1997-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Ермолаева Евгения Владимировна','FEMALE', 'Исторический', 3, to_timestamp('1997-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Жданов Павел Павлович','MALE', 'Исторический', 3, to_timestamp('1997-06-05', 'yyyy-mm-dd'));

INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Волков	Дмитрий	Сергеевич','MALE', 'Исторический', 4, to_timestamp('1998-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Ермакова	Арина	Александровна','FEMALE', 'Исторический', 4, to_timestamp('1998-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Лисянский	Игорь	Владимирович','MALE', 'Исторический', 4, to_timestamp('1998-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Морозова	Анастасия	Олеговна','FEMALE', 'Исторический', 4, to_timestamp('1999-06-05', 'yyyy-mm-dd'));
INSERT INTO liga.student (fio, gender, department, course, birthday)
VALUES('Никитухина	Валентина	Николаевна','FEMALE', 'Исторический', 4, to_timestamp('1999-06-05', 'yyyy-mm-dd'));