package ru.liga.entity;

public class StudentGroupEntity {
    private Long id;
    private String groupNumber;
    private String department;

    public StudentGroupEntity() {
    }

    public StudentGroupEntity(Long id, String groupNumber, String department) {
        this.id = id;
        this.groupNumber = groupNumber;
        this.department = department;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getGroupNumber() {
        return groupNumber;
    }

    public void setGroupNumber(String groupNumber) {
        this.groupNumber = groupNumber;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
}
