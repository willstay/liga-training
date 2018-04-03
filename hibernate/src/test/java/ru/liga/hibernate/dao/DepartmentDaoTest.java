package ru.liga.hibernate.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import ru.liga.hibernate.entity.DepartmentEntity;

import static org.junit.Assert.assertEquals;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DepartmentDaoTest {
    @Autowired
    private DepartmentDao departmentDao;

    @Test
    public void findByIdTest() {
        DepartmentEntity entity = departmentDao.select(1L);
        assertEquals("Механико-математический", entity.getTitle());
        assertEquals("119991, ГСП-1, Москва, Ленинские горы, МГУ, д.1, Главное здание, механико-математический факультет", entity.getAddress());
        assertEquals(Integer.valueOf(1932), entity.getFoundationYear());
    }

}