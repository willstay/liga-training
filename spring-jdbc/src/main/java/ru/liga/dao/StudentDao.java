package ru.liga.dao;

import org.springframework.jdbc.core.JdbcTemplate;
import ru.liga.dao.mapper.StudentMapper;
import ru.liga.entity.StudentEntity;

import java.util.List;

public class StudentDao {
    private JdbcTemplate jdbcTemplate;

    public StudentDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public StudentEntity save(StudentEntity studentEntity) {
        if (selectById(studentEntity.getId()) == null) {
            return insert(studentEntity);
        } else {
            return update(studentEntity);
        }
    }

    public StudentEntity insert(StudentEntity studentEntity) {
        String sqlInsert = "INSERT INTO liga.student (id, fio, gender, course, department_id, birthday)"
                + " VALUES (?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sqlInsert,
                studentEntity.getId(),
                studentEntity.getFio(),
                studentEntity.getGender(),
                studentEntity.getStudentGroupId(),
                studentEntity.getDepartmentId(),
                studentEntity.getBirthday()
        );

        return studentEntity;
    }

    public StudentEntity update(StudentEntity studentEntity) {
        String sqlUpdate = "update liga.student set" +
                " fio = ?," +
                " gender = ?," +
                " course = ?," +
                " birthday = ?," +
                " department_id = ?" +
                " where id = ?";
        jdbcTemplate.update(sqlUpdate,
                studentEntity.getFio(),
                studentEntity.getGender(),
                studentEntity.getStudentGroupId(),
                studentEntity.getBirthday(),
                studentEntity.getDepartmentId(),
                studentEntity.getId());

        return studentEntity;
    }

    public StudentEntity selectById(Long id) {
        String sql = "SELECT * FROM liga.student WHERE ID = ?";
        return jdbcTemplate.queryForObject(sql, new StudentMapper(),id);
    }

    public List<StudentEntity> selectByDepartmentId(Long id) {
        String sql = "SELECT * FROM liga.student WHERE department_id = ?";
        return jdbcTemplate.query(sql, new StudentMapper(), id);
    }

    public void delete(Long entityId) {
        String sqlDelete = "delete from liga.student where id = ?";
        jdbcTemplate.update(sqlDelete, entityId);
    }
}
