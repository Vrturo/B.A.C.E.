$(document).ready(function() {
  if (window.location.pathname == '/users/calculate')
    var barData = {
      labels: ['Legal Limit', 'You'],
      datasets: [
          {
              label: 'Blood Alcohol Content',
              fillColor: "#383838",
              strokeColor: "#000000",
              highlightFill: "#B0B0B0",
              highlightStroke: "#000000",
              data: [.08, alcoholContent]
          }
      ]
  };
  var context = document.getElementById('myBar').getContext('2d');
  var clientsChart = new Chart(context).Bar(barData);
})
