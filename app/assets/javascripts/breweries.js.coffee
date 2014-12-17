# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require underscore
#= require gmaps/google

@convert = (objects) ->
  array = []

  for x in objects
    y =
      lat: x.lat
      lng: x.lng
      infowindow: x.name
    array.push y

  googleMap array

@googleMap = (content) ->
  mapStyle = [{"stylers":[{"saturation":-100}]},{"featureType":"water","elementType":"geometry.fill","stylers":[{"color":"#0099dd"}]},{"elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"poi.park","elementType":"geometry.fill","stylers":[{"color":"#aadd55"}]},{"featureType":"road.highway","elementType":"labels","stylers":[{"visibility":"on"}]},{"featureType":"road.arterial","elementType":"labels.text","stylers":[{"visibility":"on"}]},{"featureType":"road.local","elementType":"labels.text","stylers":[{"visibility":"on"}]},{}]
  handler = Gmaps.build("Google")
  handler.buildMap
    provider: {styles: mapStyle}
    internal:
      id: "map"
  , ->
    markers = handler.addMarkers(content)
    handler.bounds.extendWith markers
    handler.fitMapToBounds()

$ ->
  if $('#map').length >= 1
    $.ajax
      url: '/breweries.json'
    .done (data) ->
      convert data