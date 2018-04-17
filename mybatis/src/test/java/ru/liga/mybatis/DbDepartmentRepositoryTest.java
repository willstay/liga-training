package ru.liga.mybatis;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import ru.liga.mybatis.config.TestDaoSpringConfig;
import ru.liga.mybatis.entity.DepartmentEntity;
import ru.liga.mybatis.entity.EmployeeEntity;
import ru.liga.mybatis.entity.StudentEntity;
import ru.liga.mybatis.repository.DepartmentRepository;

import java.time.LocalDate;
import java.util.Collections;
import static org.junit.Assert.assertEquals;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {TestDaoSpringConfig.class})
public class DbDepartmentRepositoryTest {
    @Autowired
    private DepartmentRepository departmentRepository;
    private StudentEntity studentEntity;
    private EmployeeEntity employeeEntity;
    private DepartmentEntity departmentEntity;

    @Before
    public void before(){
        studentEntity = new StudentEntity(
                100L,
                "Ivan",
                "MALE",
                4L,
                1L,
                LocalDate.now()
        );
        employeeEntity = new EmployeeEntity(
                100L,
                "Petr",
                "MALE",
                4L,
                "Доктор наук",
                "Профессор",
                LocalDate.now()
        );
        departmentEntity = new DepartmentEntity(
                4L,
                "ВШЭ",
                "Москва",
                1337,
                Collections.singletonList(employeeEntity),
                Collections.singletonList(studentEntity)
        );
    }
    @Test
    public void saveTest(){
        departmentRepository.save(departmentEntity);
    }

    @Test
    public void findPetrTest() {
        assertEquals(departmentRepository.findById(4L).getEmployees().get(0).getFio(),"Petr");
    }

    @Test
    public void deleteTest() {
        departmentRepository.deleteById(4L);
    }

}
