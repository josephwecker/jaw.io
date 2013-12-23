$ ->
  gifdat = 'data:image/gif;base64,R0lGODlhAQABAID/AP///wAAACwAAAAAAQABAAACAkQBADs='
  style = 'visibility: hidden;'
  $('.atxt,p,h1,h2,h3,h4,h5,h6').
    append('<img src="'+gifdat+'" style="'+style+'" class="__autoalign__"/>').
	  css('opacity',0)

$(window).load ->
  $('.__autoalign__').each ->
    offset = $(this).offset().top - $(this).parent().offset().top + 1 - $(this).parent().height()
    parent = $(this).parent()
    if offset isnt 0
      parent.css('padding-top',(_,pt)->parseFloat(pt)-offset).
	      css('margin-bottom', (_,mb)->parseFloat(mb)+offset)
    $(this).remove()
    parent.animate({'opacity': 1}, 3000, 'swing')
