package ru.liga.hibernate.dao;

import ru.liga.hibernate.entity.StudentEntity;

import java.util.List;

public interface StudentDao {

    void deleteById(Long entityId);

    void save(StudentEntity studentEntity);

    StudentEntity selectById(Long id);

    List<StudentEntity> selectByDepartmentId(String id);
}
