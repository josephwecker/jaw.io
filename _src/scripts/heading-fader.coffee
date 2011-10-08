$(window).load ->
  $('#section-title').text(($('article>h2').first().text()))

  $(window).scroll ()->
    scr = $(window).scrollTop()
    condense = scr - 29
    height_min = 145 - 25
    new_height = Math.max.apply @,[height_min, 145 - (condense / 2)]
    negmargin = Math.min.apply @,[condense / 2, 29]
    negmargin = 0 if negmargin < 0
    new_height = 145 if new_height > 145
    $('header').height(new_height).css('margin-top',- negmargin)
    step = Math.min.apply @,[condense / 90.0, 1.0]   # from + ((to - from) / step)  30 39 41   78 83 84
    $('#article-meta').css('height',Math.floor(Math.min(29.0, 29.0 - (29.0 * step))))
    $('body>header').css('background-color',
      'rgb('+ Math.floor(Math.max(30.0, 30.0 + ((220.0 - 30.0) * step))) + ',' +
              Math.floor(Math.max(39.0, 39.0 + ((213.0 - 39.0) * step))) + ',' +
              Math.floor(Math.max(41.0, 41.0 + ((212.0 - 41.0) * step))) + ')')
    $('body>header h1').css('color',
      'rgb('+ Math.floor(Math.max(78.0, 78.0 + ((220.0 - 78.0) * step))) + ',' +
              Math.floor(Math.max(83.0, 83.0 + ((213.0 - 83.0) * step))) + ',' +
              Math.floor(Math.max(84.0, 84.0 + ((212.0 - 84.0) * step))) + ')')
    $('.subtitle').css('color',
      'rgb('+ Math.floor(Math.max(130.0, 130.0 + ((220.0 - 130.0) * step))) + ',' +
              Math.floor(Math.max(132.0, 132.0 + ((213.0 - 132.0) * step))) + ',' +
              Math.floor(Math.max(132.0, 132.0 + ((212.0 - 132.0) * step))) + ')')
    $('article header').css('background-color',
      'rgb('+ Math.floor(Math.max(78.0, 78.0 + ((220.0 - 78.0) * step))) + ',' +
              Math.floor(Math.max(83.0, 83.0 + ((213.0 - 83.0) * step))) + ',' +
              Math.floor(Math.max(84.0, 84.0 + ((212.0 - 84.0) * step))) + ')')
    $('article header').css('color',
      'rgb('+ Math.floor(Math.max(47.0, 47.0 + ((220.0 - 47.0) * step))) + ',' +
              Math.floor(Math.max(56.0, 56.0 + ((213.0 - 56.0) * step))) + ',' +
              Math.floor(Math.max(58.0, 58.0 + ((212.0 - 58.0) * step))) + ')')
    $('article header h1').css('color',
      'rgb('+ Math.floor(Math.min(137.0, 137.0 + ((98.0 - 137.0) * step))) + ',' +
              Math.floor(Math.min(139.0, 139.0 + ((103.0 - 139.0) * step))) + ',' +
              Math.floor(Math.min(139.0, 139.0 + ((104.0 - 139.0) * step))) + ')')
    $('article header h1').css('border-bottom', '1px solid ' +
      'rgb('+ Math.floor(Math.max(91.0, 91.0 + ((220.0 - 91.0) * step))) + ',' +
              Math.floor(Math.max(93.0, 93.0 + ((213.0 - 93.0) * step))) + ',' +
              Math.floor(Math.max(93.0, 93.0 + ((212.0 - 93.0) * step))) + ')')

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
