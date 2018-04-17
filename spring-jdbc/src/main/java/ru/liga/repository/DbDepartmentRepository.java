package ru.liga.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.liga.dao.DepartmentDao;
import ru.liga.dao.EmployeeDao;
import ru.liga.dao.StudentDao;
import ru.liga.entity.DepartmentEntity;
import ru.liga.entity.EmployeeEntity;
import ru.liga.entity.StudentEntity;

@Component
public class DbDepartmentRepository implements DepartmentRepository {

    @Autowired
    private DepartmentDao departmentDao;

    @Autowired
    private StudentDao studentDao;

    @Autowired
    private EmployeeDao employeeDao;

    @Override
    public DepartmentEntity save(DepartmentEntity entity) {
        departmentDao.save(entity);
        entity.getStudents().forEach(studentDao::save);
        entity.getEmployees().forEach(employeeDao::save);
        return entity;
    }

    @Override
    public void deleteById(Long id) {
        departmentDao.delete(id);
        studentDao.selectByDepartmentId(id).stream()
                .mapToLong(StudentEntity::getId)
                .forEach(studentDao::delete);
        employeeDao.selectByDepartmentId(id).stream()
                .mapToLong(EmployeeEntity::getId)
                .forEach(employeeDao::deleteById);
    }

    @Override
    public DepartmentEntity findById(Long id) {
        DepartmentEntity entity = departmentDao.findById(id);
        if (entity == null) {
            return null;
        }
        entity.setStudents(studentDao.selectByDepartmentId(id));
        entity.setEmployees(employeeDao.selectByDepartmentId(id));
        return entity;
    }
}
