$ ->
  $(window).scroll ()->
    $('article h2').each ->
      $t = $(this)
      return if $t.attr('id') == 'section-title'
      d = $t.offset().top - $(window).scrollTop() - $('body>header').outerHeight(false)
      if d < -30
        $('#section-title').text($t.text())
        $t.css('opacity',0.0)
      else if d < 0
        $t.css('opacity',1.0 + (d / 30))
      else
        $t.css('opacity',1.0)
