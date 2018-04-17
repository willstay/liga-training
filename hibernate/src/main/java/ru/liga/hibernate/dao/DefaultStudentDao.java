package ru.liga.hibernate.dao;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.liga.hibernate.entity.EmployeeEntity;
import ru.liga.hibernate.entity.StudentEntity;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Service
@Transactional
public class DefaultStudentDao implements StudentDao{

    @PersistenceContext
    private EntityManager em;

    @Override
    public void deleteById(Long entityId) {
        StudentEntity studentEntity = selectById(entityId);
        studentEntity
                .getDepartment()
                .getStudents()
                .remove(studentEntity);
    }

    @Override
    public void insert(StudentEntity studentEntity) {
        em.persist(studentEntity);
    }

    @Override
    public void update(StudentEntity studentEntity) {
        em.merge(studentEntity);
    }

    @Override
    public StudentEntity selectById(Long id) {
        return em.find(StudentEntity.class, id);
    }

    @Override
    public List<StudentEntity> selectByDepartmentId(String id) {
        return (List<StudentEntity>) em
                .createQuery("FROM StudentEntity WHERE department_id = :departmentId")
                .setParameter("departmentId", id)
                .getResultList();
    }

}
