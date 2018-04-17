package ru.liga.mybatis.dao;

import ru.liga.mybatis.entity.DepartmentEntity;

import java.util.List;

public interface DepartmentDao {

    int insertById(DepartmentEntity entity);

    int updateById(DepartmentEntity entity);

    void deleteById(Long entityId);

    DepartmentEntity findById(Long id);

    List<DepartmentEntity> selectByFoundationYear(Integer year);

    DepartmentEntity selectByTitle(String title);
}
