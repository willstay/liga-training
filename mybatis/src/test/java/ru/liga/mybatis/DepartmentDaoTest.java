package ru.liga.mybatis;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import ru.liga.mybatis.config.TestDaoSpringConfig;
import ru.liga.mybatis.dao.DepartmentDao;
import ru.liga.mybatis.dao.EmployeeDao;
import ru.liga.mybatis.entity.EmployeeEntity;

import java.time.LocalDate;

import static org.junit.Assert.assertEquals;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {TestDaoSpringConfig.class})
public class DepartmentDaoTest {

    @Autowired
    private DepartmentDao departmentDao;

    @Autowired
    private EmployeeDao employeeDao;

    @Before
    public void init() {

    }

    @Test
    public void selectByFoundationYear() {
        assertEquals(7, departmentDao.findById(1L).getEmployees().size());
    }

    @Test
    public void insertIvan(){
        employeeDao.insert(new EmployeeEntity(100L,"Ivanov Ivan Ivanovich","male",1L,"molodecz","dean", LocalDate.now()));
    }
    @Test
    public void updateIvan(){
        employeeDao.update(new EmployeeEntity(100L,"Ivanov Ivan Ivanovich","male",1L,"NEmolodecz","dean", LocalDate.now()));
    }
    @Test
    public void deleteDubo(){
        employeeDao.delete(14L);
    }
}