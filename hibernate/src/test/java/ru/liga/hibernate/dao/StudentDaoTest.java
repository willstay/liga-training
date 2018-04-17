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
        assertEquals(studentDao.selectById(0L).getFio(), "Бардашов Данила Романович");
    }

    @Test
    public void deleteBardashovTest() {
        studentDao.deleteById(1L);
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
        studentDao.save(studentEntity);
        assertEquals(studentDao.selectById(studentEntity.getId()).getFio(), "Private Ryan");
    }
}
