package ru.liga.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import ru.liga.config.TestDaoSpringConfig;
import ru.liga.entity.StudentEntity;

import java.time.LocalDate;

import static org.junit.Assert.assertEquals;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {TestDaoSpringConfig.class})
public class StudentDaoTest {
    @Autowired
    private StudentDao studentDao;

    @Test
    public void WhenGetId1EqualsBardashov() {
        assertEquals(studentDao.selectById(1L).getFio(),"Бардашов Данила Романович");
    }
    @Test
    public void insertHelicopterIntoStudent(){
        studentDao.insert(
                new StudentEntity(100L,"Helicopter","TRANSGENDER",1L,1L, LocalDate.now()));
    }
    @Test
    public void deleteHelicopter(){
        studentDao.delete(100L);
    }
}
