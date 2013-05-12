updatecounter = ->
  
  # 140 is the max message length
  remaining = 140 - $("#micropost_content").val().length
  $(".counter").text remaining
  if remaining < 0
    $(".counter").css "color", "#d40d12"
  else
    $(".counter").css "color", "#999999"

$(document).ready ($) ->
  updatecounter()
  $("#micropost_content").change updatecounter
  $("#micropost_content").keyup updatecounter
