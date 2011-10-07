(function() {
  $(window).load(function() {
    $('#section-title').text($('article>h2').first().text());
    return $(window).scroll(function() {
      var condense, height_min, negmargin, new_height, scr, step;
      scr = $(window).scrollTop();
      condense = scr - 29;
      height_min = 145 - 23;
      new_height = Math.max.apply(this, [height_min, 145 - (condense / 2)]);
      negmargin = Math.min.apply(this, [condense / 2, 30]);
      if (negmargin < 0) {
        negmargin = 0;
      }
      if (new_height > 145) {
        new_height = 145;
      }
      $('header').height(new_height).css('margin-top', -negmargin);
      step = Math.min.apply(this, [condense / 90.0, 1.0]);
      $('body>header').css('background-color', 'rgb(' + Math.floor(Math.max(30.0, 30.0 + ((247.0 - 30.0) * step))) + ',' + Math.floor(Math.max(39.0, 39.0 + ((239.0 - 39.0) * step))) + ',' + Math.floor(Math.max(41.0, 41.0 + ((238.0 - 41.0) * step))) + ')');
      $('article header').css('background-color', 'rgb(' + Math.floor(Math.max(78.0, 78.0 + ((247.0 - 78.0) * step))) + ',' + Math.floor(Math.max(83.0, 83.0 + ((239.0 - 83.0) * step))) + ',' + Math.floor(Math.max(84.0, 84.0 + ((238.0 - 84.0) * step))) + ')');
      return $('article h2').each(function() {
        var $t, d;
        $t = $(this);
        if ($t.attr('id') === 'section-title') {
          return;
        }
        d = $t.offset().top - scr - $('body>header').outerHeight(false);
        if (d < -60) {
          $('#section-title').text($t.text());
          return $t.css('opacity', 0.0);
        } else if (d < 0) {
          return $t.css('opacity', 1.0 + (d / 60));
        } else {
          return $t.css('opacity', 1.0);
        }
      });
    });
  });
}).call(this);
