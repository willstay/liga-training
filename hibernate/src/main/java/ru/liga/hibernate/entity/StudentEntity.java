package ru.liga.hibernate.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "student", uniqueConstraints = {@UniqueConstraint(columnNames = "ID")})
public class StudentEntity implements Serializable {
    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "ID", unique = true, nullable = false)
    private Long id;
    @Column(name = "fio", unique = false, nullable = false)
    private String fio;
    @Column(name = "gender", unique = false, nullable = false)
    private String gender;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "department_id", nullable = false)
    private DepartmentEntity department;
    @Column(name = "course", unique = false, nullable = false)
    private Long course;
    @Column(name = "birthday", unique = false, nullable = false)
    private LocalDate birthday;

    public StudentEntity() {
    }

    public StudentEntity(Long id, String fio, String gender, DepartmentEntity department, Long course, LocalDate birthday) {
        this.id = id;
        this.fio = fio;
        this.gender = gender;
        this.department = department;
        this.course = course;
        this.birthday = birthday;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFio() {
        return fio;
    }

    public void setFio(String fio) {
        this.fio = fio;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public DepartmentEntity getDepartment() {
        return department;
    }

    public void setDepartment(DepartmentEntity department) {
        this.department = department;
    }

    public Long getCourse() {
        return course;
    }

    public void setCourse(Long course) {
        this.course = course;
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }
}
