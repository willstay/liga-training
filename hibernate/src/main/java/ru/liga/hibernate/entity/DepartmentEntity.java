package ru.liga.hibernate.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "department", catalog = "liga", uniqueConstraints = {
        @UniqueConstraint(columnNames = "ID"),
        @UniqueConstraint(columnNames = "TITLE")})
public class DepartmentEntity implements Serializable {

    private Long id;
    private String title;
    private String address;
    private Integer foundationYear;
    private List<EmployeeEntity> employees;
    private List<StudentEntity> students;

    public DepartmentEntity(Long id, String title, String address, Integer foundationYear, List<EmployeeEntity> employees, List<StudentEntity> students) {
        this.id = id;
        this.title = title;
        this.address = address;
        this.foundationYear = foundationYear;
        this.employees = employees;
        this.students = students;
    }

    public DepartmentEntity() {
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "ID", unique = true, nullable = false)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column(name = "TITLE", unique = true, nullable = false)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Column(name = "ADDRESS", unique = false, nullable = false)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Column(name = "FOUNDATION_YEAR", unique = false, nullable = false)
    public Integer getFoundationYear() {
        return foundationYear;
    }

    public void setFoundationYear(Integer foundationYear) {
        this.foundationYear = foundationYear;
    }

    public List<EmployeeEntity> getEmployees() {
        return employees;
    }

    public void setEmployees(List<EmployeeEntity> employees) {
        this.employees = employees;
    }

    public List<StudentEntity> getStudents() {
        return students;
    }

    public void setStudents(List<StudentEntity> students) {
        this.students = students;
    }
}
