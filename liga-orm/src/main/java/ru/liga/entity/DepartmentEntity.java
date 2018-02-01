package ru.liga.entity;

public class DepartmentEntity {

    private Long id;
    private String title;
    private String address;
    private Integer foundationYear;

    public DepartmentEntity(Long id, String title, String address, Integer foundationYear) {
        this.id = id;
        this.title = title;
        this.address = address;
        this.foundationYear = foundationYear;
    }

    public DepartmentEntity() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getFoundationYear() {
        return foundationYear;
    }

    public void setFoundationYear(Integer foundationYear) {
        this.foundationYear = foundationYear;
    }
}
