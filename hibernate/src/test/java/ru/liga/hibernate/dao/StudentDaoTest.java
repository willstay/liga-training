package ru.liga.hibernate.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import ru.liga.hibernate.entity.StudentEntity;

import java.time.LocalDate;

import static org.junit.Assert.assertEquals;

@RunWith(SpringRunner.class)
@SpringBootTest
public class StudentDaoTest {
    @Autowired
    private StudentDao studentDao;

    @Autowired
    private DepartmentDao departmentDao;

    @Test
    public void selectBardashovTest() {
        assertEquals(studentDao.selectById(3L).getFio(), "Казинский Максим Тарасович");
    }

    @Test
    public void changeToPetrTest(){
        StudentEntity studentEntity = studentDao.selectById(0L);
        String fio = "Бардашов Петр Романович";
        studentEntity.setFio(fio);
        studentDao.update(studentEntity);
        assertEquals(studentDao.selectById(0L).getFio(), fio);
    }
    @Test
    public void deleteTest() {
        studentDao.deleteById(4L);
    }

    @Test
    public void savePrivateRyanTest() {
        StudentEntity studentEntity = new StudentEntity(
                null,
                "Private Ryan",
                "MALE",
                departmentDao.select(1L),
                1L,
                LocalDate.now()
        );
        studentDao.insert(studentEntity);
        assertEquals(studentDao.selectById(studentEntity.getId()).getFio(), "Private Ryan");
    }
}
