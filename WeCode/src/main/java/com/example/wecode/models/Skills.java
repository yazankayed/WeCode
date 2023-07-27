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
    @Max(100)
    private int leaderShip;

    @Min(0)
    @Max(100)
    private int timeManagement;


    @Min(0)
    @Max(100)
    private int teamWork;


    @Min(0)
    @Max(100)
    private int commitment;

    @Min(0)
    @Max(100)
    private int problemSolving;


    @Min(0)
    @Max(100)
    private int workingUnderPressure;


    @Min(0)
    @Max(100)
    private int researchSkills;


    @Min(0)
    @Max(100)
    private int communicationSkills;


    @Min(0)
    @Max(100)
    private int selfSufficient;


    @OneToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User user;

    public Skills() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public int getLeaderShip() {
        return leaderShip;
    }

    public void setLeaderShip(int leaderShip) {
        this.leaderShip = leaderShip;
    }

    public int getSelfSufficient() {
        return selfSufficient;
    }

    public void setSelfSufficient(int selfSufficient) {
        this.selfSufficient = selfSufficient;
    }


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user=user;
    }
}