var dbc = new google.maps.LatLng(37.784577, -122.397211);
var uberDriver = generateRandomSFCoords();
function createMarker(options, html) {
   var marker = new google.maps.Marker(options);
   if (html) {
     google.maps.event.addListener(marker, "click", function () {
       infoWindow.setContent(html);
       infoWindow.open(options.map, this);
    });
   }
   return marker;
}

function generateRandomSFCoords(){
 var deltaLat  = 0.01*(Math.random()-0.5);
 var deltaLong  = 0.01*(Math.random()-0.5);
 return new google.maps.LatLng(37.784577 + deltaLat, -122.397211 + deltaLong);
}
var map = new google.maps.Map(document.getElementById("map"), {
   center: dbc,
   zoom: 14,
   mapTypeId: google.maps.MapTypeId.ROADMAP
 });

var markerA = createMarker({
   position: dbc,
   map: map
 }, "<h1>A</h1>");

 var markerB = createMarker({
   position: uberDriver,
   map: map,
   icon: "http://www.toprealty.com.au/sites/top_realty/img/garage1.png"
 }, "<h1>B</h1>");

 var randomA = createMarker({
   position: generateRandomSFCoords(),
   map: map,
   icon: "http://www.toprealty.com.au/sites/top_realty/img/garage1.png"
 }, "<h1>B</h1>");

  var randomB = createMarker({
   position: generateRandomSFCoords(),
   map: map,
   icon: "http://www.toprealty.com.au/sites/top_realty/img/garage1.png"
 }, "<h1>B</h1>");

   var randomC = createMarker({
   position: generateRandomSFCoords(),
   map: map,
   icon: "http://www.toprealty.com.au/sites/top_realty/img/garage1.png"
 }, "<h1>B</h1>");
