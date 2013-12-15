# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(".main").onepage_scroll sectionContainer: "section", 
    easing: "ease",
    animationTime: 1000,
    pagination: true,
    updateURL: false,
    beforeMove: (index) -> {},
    afterMove: (index) -> {},
    loop: false,
    responsiveFallback: false


  $.each [1, 2, 3, 4, 5], (index, item) ->
	  $('#jump-to-' + item).click () ->
	    $(".main").moveTo(item);