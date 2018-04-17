package ru.liga.hibernate.dao;

import ru.liga.hibernate.entity.StudentEntity;

import java.util.List;

public interface StudentDao {

    void deleteById(Long entityId);

    void insert(StudentEntity studentEntity);

    void update(StudentEntity studentEntity);

    StudentEntity selectById(Long id);

    List<StudentEntity> selectByDepartmentId(String id);
}
