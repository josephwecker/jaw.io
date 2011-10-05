$ ->
  gifdat = 'data:image/gif;base64,R0lGODlhAQABAID/AP///wAAACwAAAAAAQABAAACAkQBADs='
  style = 'visibility: hidden;'
  $('.atxt,p,h1,h2,h3,h4,h5,h6,span,li').
    append('<img src="'+gifdat+'" style="'+style+'" class="__autoalign__"/>').
      css('opacity',0.01)


$(window).load ->
  $('.__autoalign__').each ->
    $parent = $(this).parent()
    currt = $(this).offset().top + 1
    offset = 29 - (currt % 29)
    offset = 0 if offset == 29
    relap = offset - ( $(this).offset().top + 1 - $parent.offset().top - $parent.innerHeight() )

    #$parent.attr('offset', offset)
    #$parent.attr('relap', relap)
    if offset isnt 0
      $parent.css('padding-top',(_,v)-> parseFloat(v) + offset)
    if relap isnt 0
      $parent.css('margin-bottom',(_,v)-> parseFloat(v) - relap)
    $(this).remove()
    $parent.animate({'opacity': 1}, 550, 'swing')
