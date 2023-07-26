package com.example.wecode.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

import java.util.List;

@Entity
@Table(name="languages")
public class Languages {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @NotEmpty(message="Programing Languages is required!")
    private String programingLanguages;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "users_languages",
            joinColumns = @JoinColumn(name = "languages_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id")
    )
    private List<Category> users;


    public Languages() {}


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getProgramingLanguages() {
        return programingLanguages;
    }

    public void setProgramingLanguages(String programingLanguages) {
        this.programingLanguages = programingLanguages;
    }

    public List<Category> getUsers() {
        return users;
    }

    public void setUsers(List<Category> users) {
        this.users = users;
    }





}
