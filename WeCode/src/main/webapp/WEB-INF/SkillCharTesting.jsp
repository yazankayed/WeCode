<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Chart.js Radar Chart Example</title>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
<div style="width: 40%;">
<canvas id="myRadarChart" width="400" height="400"></canvas>

<script>
  // Get the JSON array from the model attribute and parse it to a JavaScript array
  const arr = JSON.parse('<c:out value="${lotfi}" />');
  const arr2= JSON.parse('<c:out value="${Yazan}" />');

  const data = {
    labels: ['Eating', 'Drinking', 'Sleeping', 'Designing', 'Coding', 'Cycling', 'Running',"Playing"],
    datasets: [{
      label: 'My First Dataset',
      data: arr,
      fill: true,
      backgroundColor: 'rgba(255, 99, 132, 0.2)',
      borderColor: 'rgb(255, 99, 132)',
      pointBackgroundColor: 'rgb(255, 99, 132)',
      pointBorderColor: '#fff',
      pointHoverBackgroundColor: '#fff',
      pointHoverBorderColor: 'rgb(255, 99, 132)'
    },{
      label: 'My Second Dataset',
      data: arr2,
      fill: true,
      backgroundColor: 'rgba(54, 162, 235, 0.2)',
      borderColor: 'rgb(54, 162, 235)',
      pointBackgroundColor: 'rgb(54, 162, 235)',
      pointBorderColor: '#fff',
      pointHoverBackgroundColor: '#fff',
      pointHoverBorderColor: 'rgb(54, 162, 235)'
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
</body>
</html>
