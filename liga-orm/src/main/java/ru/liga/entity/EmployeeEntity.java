package ru.liga.entity;

public class EmployeeEntity {
    private String id;
    private String fio;
    private String gender;
    private String faculty;
    private String degree;
    private String position;
    private String birthday;

    public EmployeeEntity(String id, String fio, String gender, String faculty, String degree, String position, String birthday) {
        this.id = id;
        this.fio = fio;
        this.gender = gender;
        this.faculty = faculty;
        this.degree = degree;
        this.position = position;
        this.birthday = birthday;
    }

    public EmployeeEntity() {
    }

    public String getId() {
        return id;
    }

    public String getFio() {
        return fio;
    }

    public String getGender() {
        return gender;
    }

    public String getFaculty() {
        return faculty;
    }

    public String getDegree() {
        return degree;
    }

    public String getPosition() {
        return position;
    }

    public String getBirthday() {
        return birthday;
    }
}
