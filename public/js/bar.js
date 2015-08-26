var barData = {
    labels: ['Legal Limit', 'You'],
    datasets: [
        {
            label: 'Blood Alcohol Content',
            fillColor: '#900000',
            data: [.08, json]
        }
    ]
};
var context = document.getElementById('myBar').getContext('2d');
var clientsChart = new Chart(context).Bar(barData);
var json = "#{@blood_alcohol_content || 'null'}"
