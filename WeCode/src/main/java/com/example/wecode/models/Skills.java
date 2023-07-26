package com.example.wecode.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;

import java.util.List;

@Entity
@Table(name="skills")
public class Skills {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Min(0)
    @Max(5)
    private int webFundamentals;

    @Min(0)
    @Max(5)
    private int javaStack;
    @Min(0)
    @Max(5)
    private int pythonStack;

    @Min(0)
    @Max(5)
    private int mernStack;

    @Min(0)
    @Max(5)
    private int timeManagement;


    @Min(0)
    @Max(5)
    private int teamWork;


    @Min(0)
    @Max(5)
    private int commitment;

    @Min(0)
    @Max(5)
    private int problemSolving;


    @Min(0)
    @Max(5)
    private int workingUnderPressure;


    @Min(0)
    @Max(5)
    private int researchSkills;


    @Min(0)
    @Max(5)
    private int communicationSkills;


    @Min(0)
    @Max(5)
    private int presentationSkills;







    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "users_skills",
            joinColumns = @JoinColumn(name = "skills_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id")
    )
    private List<Skills> users;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getWebFundamentals() {
        return webFundamentals;
    }

    public void setWebFundamentals(int webFundamentals) {
        this.webFundamentals = webFundamentals;
    }

    public int getJavaStack() {
        return javaStack;
    }

    public void setJavaStack(int javaStack) {
        this.javaStack = javaStack;
    }

    public int getPythonStack() {
        return pythonStack;
    }

    public void setPythonStack(int pythonStack) {
        this.pythonStack = pythonStack;
    }

    public int getMernStack() {
        return mernStack;
    }

    public void setMernStack(int mernStack) {
        this.mernStack = mernStack;
    }

    public int getTimeManagement() {
        return timeManagement;
    }

    public void setTimeManagement(int timeManagement) {
        this.timeManagement = timeManagement;
    }

    public int getTeamWork() {
        return teamWork;
    }

    public void setTeamWork(int teamWork) {
        this.teamWork = teamWork;
    }

    public int getCommitment() {
        return commitment;
    }

    public void setCommitment(int commitment) {
        this.commitment = commitment;
    }

    public int getProblemSolving() {
        return problemSolving;
    }

    public void setProblemSolving(int problemSolving) {
        this.problemSolving = problemSolving;
    }

    public int getWorkingUnderPressure() {
        return workingUnderPressure;
    }

    public void setWorkingUnderPressure(int workingUnderPressure) {
        this.workingUnderPressure = workingUnderPressure;
    }

    public int getResearchSkills() {
        return researchSkills;
    }

    public void setResearchSkills(int researchSkills) {
        this.researchSkills = researchSkills;
    }

    public int getCommunicationSkills() {
        return communicationSkills;
    }

    public void setCommunicationSkills(int communicationSkills) {
        this.communicationSkills = communicationSkills;
    }

    public int getPresentationSkills() {
        return presentationSkills;
    }

    public void setPresentationSkills(int presentationSkills) {
        this.presentationSkills = presentationSkills;
    }

    public List<Skills> getUsers() {
        return users;
    }

    public void setUsers(List<Skills> users) {
        this.users = users;
    }










}
