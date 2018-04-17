package ru.liga.mybatis;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import ru.liga.mybatis.config.TestDaoSpringConfig;
import ru.liga.mybatis.dao.StudentDao;
import ru.liga.mybatis.entity.StudentEntity;

import java.time.LocalDate;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {TestDaoSpringConfig.class})
public class StudentDaoTest {
    @Autowired
    private StudentDao studentDao;

    @Test
    public void selectTest(){
        studentDao.selectByDepartmentId(1L);
    }

    @Test
    public void getBardashovTest() {
        assertEquals(studentDao.selectByDepartmentId(1L).get(0).getFio(),"Бардашов Данила Романович");
    }

    @Test
    public void insertMyBatisTest() {
        StudentEntity studentEntity = new StudentEntity(
                60L,
                "mybatis",
                "MALE",
                1L,
                1L,
                LocalDate.now()
        );
        studentDao.insert(studentEntity);
    }
    @Test
    public void deleteMyBatisTest(){
        studentDao.delete(60L);
    }

}
