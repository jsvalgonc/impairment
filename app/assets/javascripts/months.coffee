# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
    $('a[data-popup]').on 'click', -> 
        window.open($(this).attr('href'), "", "width=300,height=300")


