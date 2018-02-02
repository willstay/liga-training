package ru.liga.mybatis.domain;

public class StudentGroup {
    private final Long id;
    private final String groupNumber;
    private final String department;

    public StudentGroup(Long id, String groupNumber, String department) {
        this.id = id;
        this.groupNumber = groupNumber;
        this.department = department;
    }

}
