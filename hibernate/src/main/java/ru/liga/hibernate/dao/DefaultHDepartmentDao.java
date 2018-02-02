package ru.liga.hibernate.dao;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.liga.hibernate.entity.DepartmentEntity;

import java.util.List;

@Service
public class DefaultHDepartmentDao implements HDepartmentDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public void save(DepartmentEntity entity) {
        sessionFactory.getCurrentSession().save(entity);
    }

    public void delete(Long entityId) {

    }

    @Override
    @Transactional
    public DepartmentEntity select(Long id) {
        return (DepartmentEntity) sessionFactory.
                getCurrentSession().
                get(DepartmentEntity.class, id);
    }

    @Override
    @Transactional
    public List<DepartmentEntity> selectByFoundationYear(Integer year) {
        Query query = sessionFactory.
                getCurrentSession().
                createQuery("from DepartmentEntity where foundationYear = :foundationYear");
        query.setParameter("foundationYear", year);
        return (List) query.list();
    }

    @Override
    @Transactional
    public DepartmentEntity selectByTitle(String title) {
        Query query = sessionFactory.
                getCurrentSession().
                createQuery("from DepartmentEntity where title = :title");
        query.setParameter("title", title);
        return (DepartmentEntity) query.list().get(0);
    }
}
