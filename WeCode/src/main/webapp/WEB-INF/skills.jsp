<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ page isErrorPage="true" %>
          <html>

          <head>
            <title>Skills</title>
            <%-- font awesome cdn like --%>
              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
                integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
                crossorigin="anonymous" referrerpolicy="no-referrer" />
              <link rel="stylesheet" href="/CSS/devinfe.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
          </head>

          <body>
            <%--head section starts --%>
              <header>
                <div class="user">
                  <img src="${developer.image}" alt="">
                  <h3 class="name">${developer.userName}</h3>
                  <p class="post">${developer.category.categoryType}</p>
                </div>
                <nav class="navbar">
                  <ul>
                    <li><a href="/">Home</a></li>
                    <li><a href="/skills/new">Skills</a></li>
                    <li><a href="/update">Update Info</a></li>
                    <li><a style="background-color: darkred" href="#">Delete Account</a></li>
                  </ul>
                </nav>

              </header>

              <%-- header section ends--%>
                <div id="menu" class="fas fa-bars"></div>
                <div>


                  <h1>New Skills</h1>
                  <form:form action="/createskills" method="post" modelAttribute="skills">
                    <div class="form-group">
                      <div class="form-group row mb-3">
<%--                         <label class="col-sm-4 col-form-label"> LeaderShip:</label>--%>
<%--                        <form:errors path="leaderShip" style="color:red;" />--%>
<%--                        <div class="col-sm-8">--%>
<%--                          <form:input path="leaderShip" type="Number" class="form-control" />--%>
<%--                        </div> --%>
  <span style="text-align: left">Leader Ship</span>
    <span style="text-align: left">0</span>
  <span style="text-align: center">100</span>


  <label class="form-label" for="customRange1">Example range</label>
  <div class="range">
    <input type="range" class="form-range" id="customRange1" />
  </div>
                          <form:errors path="leaderShip" style="color:red;" />
                      </div>

                      <div class="form-group">
                        <div class="form-group row mb-3">
                          <label class="col-sm-4 col-form-label"> Time Management:</label>
                          <form:errors path="timeManagement" style="color:red;" />
                          <div class="col-sm-8">
                            <form:input path="timeManagement" type="Number" class="form-control" />
                          </div>
                        </div>

                        <div class="form-group">
                          <div class="form-group row mb-3">
                            <label class="col-sm-4 col-form-label"> Team Work:</label>
                            <form:errors path="teamWork" style="color:red;" />
                            <div class="col-sm-8">
                              <form:input path="teamWork" type="Number" class="form-control" />
                            </div>
                          </div>
                          <div class="form-group">
                            <div class="form-group row mb-3">
                              <label class="col-sm-4 col-form-label"> Commitment:</label>
                              <form:errors path="commitment" style="color:red;" />
                              <div class="col-sm-8">
                                <form:input path="commitment" type="Number" class="form-control" />
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="form-group row mb-3">
                                <label class="col-sm-4 col-form-label"> Problem Solving:</label>
                                <form:errors path="problemSolving" style="color:red;" />
                                <div class="col-sm-8">
                                  <form:input path="problemSolving" type="Number" class="form-control" />
                                </div>
                              </div>
                              <div class="form-group">
                                <div class="form-group row mb-3">
                                  <label class="col-sm-4 col-form-label"> Working Under Pressure:</label>
                                  <form:errors path="workingUnderPressure" style="color:red;" />
                                  <div class="col-sm-8">
                                    <form:input path="workingUnderPressure" type="Number" class="form-control" />
                                  </div>
                                </div>
                                <div class="form-group">
                                  <div class="form-group row mb-3">
                                    <label class="col-sm-4 col-form-label"> Research Skills:</label>
                                    <form:errors path="researchSkills" style="color:red;" />
                                    <div class="col-sm-8">
                                      <form:input path="researchSkills" type="Number" class="form-control" />
                                    </div>
                                  </div>
                                  <div class="form-group">
                                    <div class="form-group row mb-3">
                                      <label class="col-sm-4 col-form-label"> Communication Skills:</label>
                                      <form:errors path="communicationSkills" style="color:red;" />
                                      <div class="col-sm-8">
                                        <form:input path="communicationSkills" type="Number" class="form-control" />
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <div class="form-group row mb-3">
                                        <label class="col-sm-4 col-form-label"> selfSufficient:</label>
                                        <form:errors path="selfSufficient" style="color:red;" />
                                        <div class="col-sm-8">
                                          <form:input path="selfSufficient" type="Number" class="form-control" />
                                        </div>
                                      </div>
                                      <form:input type="hidden" path="user" value="${currentUser.id}" />
                                      <button type="submit" class="btn btn-primary">Create</button>
                  </form:form>
                </div>

                <%--jquery cdn link--%>
                  <script
                    src="https://cdnjs.cloudflare.com/ajax/libs/react/18.2.0/umd/react.production.min.js"></script>
                  <script src="JS/devinfo.js"></script>


          </body>

          </html>