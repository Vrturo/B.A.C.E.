var barData = {
    labels: ['Legal Limit', 'You'],
    datasets: [
        {
            label: '2010 customers #',
            fillColor: '#900000',
            data: [.087, .06]
        }
    ]
};
var context = document.getElementById('myBar').getContext('2d');
var clientsChart = new Chart(context).Bar(barData);
