# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ajax:success", "form#comments-form", (ev,data)->
	$("textarea").val("")
	$("#listadoComentarios").append("<li>#{data.body} - #{data.user.email}</li>")