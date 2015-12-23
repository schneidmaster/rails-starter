window.notification = (type, text, layout='topRight') ->
  noty(
    theme: 'relax'
    text: text
    layout: layout
    type: type
    timeout: 3000
  )

$ ->
  $('#flash_msgs div').each ->
    notification(@className, $(@).html())
