w<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Skills</title>
</head>
<body>
<h1>New Skills</h1>
<form:form action="/createskills" method="post" modelAttribute="skills">
  <div class="form-group">
    <div class="form-group row mb-3">
      <label  class="col-sm-4 col-form-label"> LeaderShip:</label>
      <form:errors path="leaderShip" style="color:red;"/>
      <div class="col-sm-8">
        <form:input path="leaderShip"  type="Number" class="form-control"/>
      </div>
    </div>
    <div class="form-group">
      <div class="form-group row mb-3">
        <label  class="col-sm-4 col-form-label"> Time Management:</label>
        <form:errors path="timeManagement" style="color:red;"/>
        <div class="col-sm-8">
          <form:input path="timeManagement"  type="Number" class="form-control"/>
        </div>
      </div>

      <div class="form-group">
        <div class="form-group row mb-3">
          <label  class="col-sm-4 col-form-label"> Team Work:</label>
          <form:errors path="teamWork" style="color:red;"/>
          <div class="col-sm-8">
            <form:input path="teamWork"  type="Number" class="form-control"/>
          </div>
        </div>
        <div class="form-group">
          <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label"> Commitment:</label>
            <form:errors path="commitment" style="color:red;"/>
            <div class="col-sm-8">
              <form:input path="commitment"  type="Number" class="form-control"/>
            </div>
          </div>
          <div class="form-group">
            <div class="form-group row mb-3">
              <label  class="col-sm-4 col-form-label"> Problem Solving:</label>
              <form:errors path="problemSolving" style="color:red;"/>
              <div class="col-sm-8">
                <form:input path="problemSolving"  type="Number" class="form-control"/>
              </div>
            </div>
            <div class="form-group">
              <div class="form-group row mb-3">
                <label  class="col-sm-4 col-form-label"> Working Under Pressure:</label>
                <form:errors path="workingUnderPressure" style="color:red;"/>
                <div class="col-sm-8">
                  <form:input path="workingUnderPressure"  type="Number" class="form-control"/>
                </div>
              </div>
              <div class="form-group">
                <div class="form-group row mb-3">
                  <label  class="col-sm-4 col-form-label"> Research Skills:</label>
                  <form:errors path="researchSkills" style="color:red;"/>
                  <div class="col-sm-8">
                    <form:input path="researchSkills"  type="Number" class="form-control"/>
                  </div>
                </div>
                <div class="form-group">
                  <div class="form-group row mb-3">
                    <label  class="col-sm-4 col-form-label"> Communication Skills:</label>
                    <form:errors path="communicationSkills" style="color:red;"/>
                    <div class="col-sm-8">
                      <form:input path="communicationSkills"  type="Number" class="form-control"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="form-group row mb-3">
                      <label  class="col-sm-4 col-form-label"> selfSufficient:</label>
                      <form:errors path="selfSufficient" style="color:red;"/>
                      <div class="col-sm-8">
                        <form:input path="selfSufficient"  type="Number" class="form-control"/>
                      </div>
                    </div>
                      <form:input type="hidden" path="user" value="${currentUser.id}"/>
                    <button type="submit" class="btn btn-primary">Create</button>
</form:form>
</body>
</html>
