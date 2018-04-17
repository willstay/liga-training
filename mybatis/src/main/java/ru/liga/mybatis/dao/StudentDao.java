package ru.liga.mybatis.dao;

import ru.liga.mybatis.entity.DepartmentEntity;
import ru.liga.mybatis.entity.EmployeeEntity;
import ru.liga.mybatis.entity.StudentEntity;

import java.util.List;

public interface StudentDao {
    int insert(StudentEntity entity);

    int update(StudentEntity entity);

    void delete(Long entityId);

    StudentEntity selectById(Long id);

    List<StudentEntity> selectByDepartmentId(Long id);

}
