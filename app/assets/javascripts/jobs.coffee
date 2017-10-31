# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'turbolinks:load', ->
  if $('.pagination').length && $('#tweets').length
    $(window).scroll ->
      url = $('.pagination .next_page').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
        $('.pagination').text("Loading tweets...")
        $.getScript(url)
    $(window).scroll()


$(document).on 'turbolinks:load', ->
  $('#skills_multiselect').multiselect
    nonSelectedText: '0 - Skills Selected'
    numberDisplayed: 0
    nSelectedText: ' - Skills Selected'
  return


