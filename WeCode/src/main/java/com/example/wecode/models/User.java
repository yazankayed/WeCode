package com.example.wecode.models;

import jakarta.annotation.Nullable;
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
    @Size(min=3, max=300, message="Username must be between 3 and 30 characters")
    private String userName;

    @Size(min=3, max=999999999, message="Image must be between 3 and 30 characters")
    private String image = null;

    @Size(min=3, max=999999999, message="CV must be between 3 and 30 characters")
    private String cv= null;


    @Min(0)
    private Integer experience = 0;


    @Max(999999999)
    @Min(100000000)
    private Integer idNum = 100000001;

    private boolean status =true;




    @Size(min=3, max=30, message="Location must be between 3 and 30 characters")
    private String location = null;







    @NotEmpty(message="Email is required!")
    @Email(message="Please enter a valid email!")
    private String email;

    @NotEmpty(message="Password is required!")
    @Size(min=8, max=128, message="Password must be between 8 and 128 characters")
    private String password;

    @Transient
    @Nullable
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
    private List<Languages> languages;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="category_id")
    private Category category;

    @OneToMany(mappedBy="user", fetch = FetchType.LAZY)
    private List<Chat> chats;

    @OneToOne(mappedBy="user", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    private Skills skills;



    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="company_id")
    private Company company;




    public User() {}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCv() {
        return cv;
    }

    public void setCv(String cv) {
        this.cv = cv;
    }

    public Integer getExperience() {
        return experience;
    }

    public void setExperience(Integer experience) {
        this.experience = experience;
    }

    public Integer getIdNum() {
        return idNum;
    }

    public void setIdNum(Integer idNum) {
        this.idNum = idNum;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
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

    public List<Languages> getLanguages() {
        return languages;
    }

    public void setLanguages(List<Languages> languages) {
        this.languages = languages;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public List<Chat> getChats() {
        return chats;
    }

    public void setChats(List<Chat> chats) {
        this.chats = chats;
    }

    public Skills getSkills() {
        return skills;
    }

    public void setSkills(Skills skills) {
        this.skills = skills;
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