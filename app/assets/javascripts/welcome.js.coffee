# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('h2').click (e) ->
    $(e.currentTarget).next().slideToggle()
    $(e.currentTarget).find('.arrow-up, .arrow-down').toggle()

$(document).ready ->
  clickEvent = false
  $("#myCarousel").carousel(interval: 4000).on("click", ".list-group li", ->
    clickEvent = true
    $(".list-group li").removeClass "active"
    $(this).addClass "active"
    return
  ).on "slid.bs.carousel", (e) ->
    unless clickEvent
      count = $(".list-group").children().length - 1
      current = $(".list-group li.active")
      current.removeClass("active").next().addClass "active"
      id = parseInt(current.data("slide-to"))
      $(".list-group li").first().addClass "active"  if count is id
    clickEvent = false
    return

  return

$(window).load ->
  boxheight = $("#myCarousel .carousel-inner").innerHeight()
  itemlength = $("#myCarousel .item").length
  triggerheight = Math.round(boxheight / itemlength + 1)
  $("#myCarousel .list-group-item").outerHeight triggerheight
  return
