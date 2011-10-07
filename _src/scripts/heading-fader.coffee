$(window).load ->
  $('#section-title').text(($('article>h2').first().text()))

  $(window).scroll ()->
    scr = $(window).scrollTop()
    condense = scr - 29
    height_min = 145 - 23
    new_height = Math.max.apply @,[height_min, 145 - (condense / 2)]
    negmargin = Math.min.apply @,[condense / 2, 30]
    negmargin = 0 if negmargin < 0
    new_height = 145 if new_height > 145
    $('header').height(new_height).css('margin-top',- negmargin)
    step = Math.min.apply @,[condense / 90.0, 1.0]   # from + ((to - from) / step)  30 39 41   78 83 84
    #$('body>header').css('background-color',
    #  'rgb('+ Math.floor(Math.max(30.0, 30.0 + ((247.0 - 30.0) * step))) + ',' +
    #          Math.floor(Math.max(39.0, 39.0 + ((239.0 - 39.0) * step))) + ',' +
    #          Math.floor(Math.max(41.0, 41.0 + ((238.0 - 41.0) * step))) + ')')
    $('body>header').css('background-color',
      'rgb('+ Math.floor(Math.max(30.0, 30.0 + ((238.0 - 30.0) * step))) + ',' +
              Math.floor(Math.max(39.0, 39.0 + ((230.0 - 39.0) * step))) + ',' +
              Math.floor(Math.max(41.0, 41.0 + ((229.0 - 41.0) * step))) + ')')
    #$('body>header h1').css('color',
    #  'rgb('+ Math.floor(Math.max(78.0, 78.0 + ((187.0 - 78.0) * step))) + ',' +
    #          Math.floor(Math.max(83.0, 83.0 + ((184.0 - 83.0) * step))) + ',' +
    #          Math.floor(Math.max(84.0, 84.0 + ((184.0 - 84.0) * step))) + ')')
    #$('article header').css('background-color',
    #  'rgb('+ Math.floor(Math.max(78.0, 78.0 + ((247.0 - 78.0) * step))) + ',' +
    #          Math.floor(Math.max(83.0, 83.0 + ((239.0 - 83.0) * step))) + ',' +
    #          Math.floor(Math.max(84.0, 84.0 + ((238.0 - 84.0) * step))) + ')')
    $('article header').css('background-color',
      'rgb('+ Math.floor(Math.max(78.0, 78.0 + ((238.0 - 78.0) * step))) + ',' +
              Math.floor(Math.max(83.0, 83.0 + ((230.0 - 83.0) * step))) + ',' +
              Math.floor(Math.max(84.0, 84.0 + ((229.0 - 84.0) * step))) + ')')
    #$('.subtitle').text($(window).scrollTop())
    $('article h2').each ->
      $t = $(this)
      return if $t.attr('id') == 'section-title'
      d = $t.offset().top - scr - $('body>header').outerHeight(false)
      if d < -60
        $('#section-title').text($t.text())
        $t.css('opacity',0.0)
      else if d < 0
        $t.css('opacity',1.0 + (d / 60))
      else
        $t.css('opacity',1.0)
