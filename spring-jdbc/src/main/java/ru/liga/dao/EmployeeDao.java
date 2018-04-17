package ru.liga.dao;

import org.springframework.jdbc.core.JdbcTemplate;
import ru.liga.dao.mapper.EmployeeMapper;
import ru.liga.entity.EmployeeEntity;
import ru.liga.entity.EmployeeEntity;

import java.util.List;

public class EmployeeDao {
    private JdbcTemplate jdbcTemplate;

    public EmployeeDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public EmployeeEntity selectById(Long id) {
        String sql = "SELECT * FROM liga.employee WHERE ID = ?";
        List<EmployeeEntity> entities = jdbcTemplate.query(
                sql, new Object[]{id}, new EmployeeMapper());
        return entities.isEmpty() ? null : entities.get(0);
    }

    public EmployeeEntity selectByFio(String fio) {
        String sql = "SELECT * FROM liga.employee WHERE fio = ?";
        List<EmployeeEntity> entities = jdbcTemplate.query(
                sql, new Object[]{fio}, new EmployeeMapper());
        return entities.isEmpty() ? null : entities.get(0);
    }

    public EmployeeEntity save(EmployeeEntity entity) {
        if (selectById(entity.getId()) == null) {
            return insert(entity);
        } else {
            return update(entity);
        }
    }

    public EmployeeEntity insert(EmployeeEntity entity) {
        String sqlInsert = "INSERT INTO liga.employee (id, fio, gender, department_id, degree, position, birthday)"
                + " VALUES (?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sqlInsert,
                entity.getId(),
                entity.getFio(),
                entity.getGender(),
                entity.getDepartment_id(),
                entity.getDegree(),
                entity.getPosition(),
                entity.getBirthday()
        );
        return entity;
    }

    public EmployeeEntity update(EmployeeEntity entity) {
        String sqlUpdate = "update liga.employee set" +
                " fio = ?," +
                " gender = ?," +
                " department_id = ?," +
                " degree = ?," +
                " position = ?," +
                " birthday=?" +
                " where id = ?";
        jdbcTemplate.update(sqlUpdate,
                entity.getFio(),
                entity.getGender(),
                entity.getDepartment_id(),
                entity.getDegree(),
                entity.getPosition(),
                entity.getBirthday(),
                entity.getId()
        );
        return entity;
    }

    public void deleteById(Long entityId) {
        String sqlDelete = "delete from liga.employee where id = ?";
        jdbcTemplate.update(sqlDelete, entityId);
    }

    public List<EmployeeEntity> selectByDepartmentId(Long department_id) {
        String sql = "SELECT * FROM liga.employee WHERE department_id = ?";
        List<EmployeeEntity> entities = jdbcTemplate.query(
                sql, new EmployeeMapper(),department_id);
        return entities.isEmpty() ? null : entities;
    }

}