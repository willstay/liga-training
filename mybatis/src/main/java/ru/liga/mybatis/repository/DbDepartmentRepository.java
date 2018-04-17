package ru.liga.mybatis.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.liga.mybatis.dao.DepartmentDao;
import ru.liga.mybatis.dao.EmployeeDao;
import ru.liga.mybatis.dao.StudentDao;
import ru.liga.mybatis.entity.DepartmentEntity;
import ru.liga.mybatis.entity.EmployeeEntity;
import ru.liga.mybatis.entity.StudentEntity;

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
        if (departmentDao.findById(entity.getId()) == null) {
            departmentDao.insertById(entity);
        } else {
            departmentDao.updateById(entity);
        }
        for (StudentEntity student : entity.getStudents()) {
            if (studentDao.selectById(student.getId()) == null) {
                studentDao.insert(student);
            } else {
                studentDao.update(student);
            }

        }
        for (EmployeeEntity employee : entity.getEmployees()) {
            if (employeeDao.select(employee.getId()) == null) {
                employeeDao.insert(employee);
            } else {
                employeeDao.update(employee);
            }

        }
        return entity;
    }

    @Override
    public void deleteById(Long id) {
        departmentDao.deleteById(id);
        studentDao.selectByDepartmentId(id).stream()
                .mapToLong(StudentEntity::getId)
                .forEach(studentDao::delete);
        employeeDao.selectByDepartmentId(id).stream()
                .mapToLong(EmployeeEntity::getId)
                .forEach(employeeDao::delete);
    }

    @Override
    public DepartmentEntity findById(Long id) {
        return departmentDao.findById(id);
    }
}
