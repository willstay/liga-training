package ru.liga.dao.mybatis;

import ru.liga.entity.DepartmentEntity;

import java.util.List;

public interface MDepartmentDao {

    DepartmentEntity insert(DepartmentEntity entity);

    DepartmentEntity update(DepartmentEntity entity);

    void delete(Long entityId);

    DepartmentEntity select(Long id) ;

    List<DepartmentEntity> selectByFoundationYear(Integer year);

    DepartmentEntity selectByTitle(String title);
}
