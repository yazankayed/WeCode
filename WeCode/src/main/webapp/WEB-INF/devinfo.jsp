<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <title>Title</title>
    <%-- font awesome cdn like --%>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/CSS/devinfe.css">

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
            <li><a style="background-color: darkred" href="/deleteusers/${developer.id}">Delete Account</a></li>
        </ul>
    </nav>

</header>

<%-- header section ends--%>
<div id="menu" class="fas fa-bars"></div>

<%-- about section starts--%>
<section class="about" id="about">
    <h1 class="heading"> <span>About</span> Me</h1>
    <div class="row">
        <div class="info">
            <h3><span> name : </span> ${developer.userName} </h3>
            <h3> <span> ID : </span>${developer.idNum} </h3>
            <h3><span> Position :</span>${developer.category.categoryType} Developer
            </h3>

            <a href="${developer.cv}" target="_blank"><button class="btn"> Download
                CV <i class="fas fa-download"></i></button> </a>
        </div>

        <div class="counter">
            <div class="box">
                <span>${developer.experience}+</span>
                <h3>Years of Experience </h3>
            </div>
            <div class="box">
                <span>20+</span>
                <h3>Projects Completed</h3>
            </div>
            <div class="box">
                <span>12+</span>
                <h3>Awards Won</h3>
            </div>
        </div>
    </div>
</section>
<%--about section ends--%>
<%-- education section starts--%>
<section class="education" id="education">
    <h1 class="heading"> <span>Languages</span> </h1>

    <div class="box-container">

        <c:forEach items="${langs}" var="lang">

            <div class="box">
                <i class="fa-solid fa-code"></i>
                <h3>${lang.programingLanguages}</h3>
            </div>
        </c:forEach>
    </div>

</section>
<%-- education section ends--%>

<%--Skills--%>

<section class="education" id="education">
    <h1 class="heading"> <span>Skills</span> </h1>

    <div style="width: 60%; height: 80%;margin: 1% 1% 1% 25%;" class="bg-dark">

        <canvas id="myRadarChart" width="400" height="400"></canvas>

        <script>
            // Get the JSON array from the model attribute and parse it to a JavaScript array
            const arr2= JSON.parse('<c:out value="${employee}" />');

            const data = {
                labels: ['Commitment', 'Communication Skills', 'LeaderShip', 'Problem Solving', 'Research Skills', 'Self-Sufficient', 'Teamwork',"Time management","Work Under Pressure"],
                datasets: [{
                    label: 'Developer Requirements',
                    data: arr2,
                    fill: true,
                    backgroundColor: 'rgba(255, 99, 132, 0.2)',
                    borderColor: 'rgb(255, 99, 132)',
                    pointBackgroundColor: 'rgb(255, 99, 132)',
                    pointBorderColor: '#fff',
                    pointHoverBackgroundColor: '#fff',
                    pointHoverBorderColor: 'rgb(255, 99, 132)'
                }]
            };

            const config = {
                type: 'radar',
                data: data,
                options: {
                    elements: {
                        line: {
                            borderWidth: 3
                        }
                    }
                }
            };

            // Get the canvas element using the provided ID
            const canvas = document.getElementById('myRadarChart');
            // Check if the canvas element exists in the DOM
            if (canvas) {
                // Get the 2D context of the canvas element
                const ctx = canvas.getContext('2d');
                // Create the radar chart using Chart.js
                new Chart(ctx, config);
            } else {
                console.error('Canvas element with ID "myRadarChart" not found.');
            }
        </script>
    </div>


</section>

<%--Contact section starts--%>
<section class="contact" id="contact">
    <h1 class="heading"> My<span>Contacts</span></h1>

    <div class="row">
        <div class="content">

            <h3 class="title"> contact info</h3>

            <div class="info">

                <h3><i class="fas fa-envelope"></i>
                    ${developer.email}</h3>
                <h3><i class="fas fa-phone"></i> 009725566778
                </h3>
                <h3><i class="fas fa-phone"></i> 009725566778
                </h3>
                <h3><i
                        class="fas fa-map-marker-alt"></i>${developer.location}
                </h3>
            </div>
        </div>
    </div>
</section>
<%--Contact section ends--%>



<%--jquery cdn link--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/react/18.2.0/umd/react.production.min.js"></script>
<script src="JS/devinfo.js"></script>
</body>

</html>