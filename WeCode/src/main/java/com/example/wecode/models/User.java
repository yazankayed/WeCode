package com.example.wecode.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;


@Entity
@Table(name="users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty(message="Username is required!")
    @Size(min=3, max=30, message="Username must be between 3 and 30 characters")
    private String userName;
    @NotNull(message="Years of experience is required!")
    @Min(0)
    private int experience;


    @NotNull(message="ID Number is required!")
    @Min(100000000)
    private int idNum;
     private boolean status;

    @Min(0)
    @Max(10)
    private int rating;


    @NotEmpty(message="Location is required!")
    @Size(min=3, max=30, message="Location must be between 3 and 30 characters")
    private String location;







    @NotEmpty(message="Email is required!")
    @Email(message="Please enter a valid email!")
    private String email;

    @NotEmpty(message="Password is required!")
    @Size(min=8, max=128, message="Password must be between 8 and 128 characters")
    private String password;

    @Transient
    @NotEmpty(message="Confirm Password is required!")
    @Size(min=8, max=128, message="Confirm Password must be between 8 and 128 characters")
    private String confirm;

    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "users_languages",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "languages_id")
    )
    private List<Category> languages;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="category_id")
    private Category category;




    public User() {}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getExperience() {
        return experience;
    }

    public void setExperience(int experience) {
        this.experience = experience;
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getIdNum() {
        return idNum;
    }

    public void setIdNum(int idNum) {
        this.idNum = idNum;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }


    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirm() {
        return confirm;
    }

    public void setConfirm(String confirm) {
        this.confirm = confirm;
    }


    public List<Category> getLanguages() {
        return languages;
    }

    public void setLanguages(List<Category> languages) {
        this.languages = languages;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
}