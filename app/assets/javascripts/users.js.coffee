# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$().ready ->
  # wyszukajka
  $("#q").keyup ->
    $(".search_item").each ->
      re = new RegExp($("#q").val(), "i")
      attributes = $(this).children(".search_text")
      i = 0 # FIXME da się użyć ładniejszego fora?

      while i < attributes.length
        if attributes[i].innerHTML.match(re)
          $(attributes[i]).parent().show()
          break
        else
          $(attributes[i]).parent().hide()
        ++i