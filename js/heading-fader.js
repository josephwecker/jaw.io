(function() {
  $(window).load(function() {
    $('#section-title').text($('article>h2').first().text());
    return $(window).scroll(function() {
      var condense, height_min, negmargin, new_height, scr, step;
      scr = $(window).scrollTop();
      condense = scr - 29;
      height_min = 145 - 39;
      new_height = Math.max.apply(this, [height_min, 145 - (condense / 2)]);
      negmargin = Math.min.apply(this, [condense / 2, 29]);
      if (negmargin < 0) {
        negmargin = 0;
      }
      if (new_height > 145) {
        new_height = 145;
      }
      $('header').height(new_height).css('margin-top', -negmargin);
      step = Math.min.apply(this, [condense / 90.0, 1.0]);
      $('#article-meta').css('height', Math.floor(Math.min(29.0, 29.0 - (29.0 * step))));
      $('body>header').css('background-color', 'rgb(' + Math.floor(Math.max(30.0, 30.0 + ((220.0 - 30.0) * step))) + ',' + Math.floor(Math.max(39.0, 39.0 + ((213.0 - 39.0) * step))) + ',' + Math.floor(Math.max(41.0, 41.0 + ((212.0 - 41.0) * step))) + ')');
      $('body>header h1').css('color', 'rgb(' + Math.floor(Math.max(78.0, 78.0 + ((220.0 - 78.0) * step))) + ',' + Math.floor(Math.max(83.0, 83.0 + ((213.0 - 83.0) * step))) + ',' + Math.floor(Math.max(84.0, 84.0 + ((212.0 - 84.0) * step))) + ')');
      $('.subtitle').css('color', 'rgb(' + Math.floor(Math.max(130.0, 130.0 + ((220.0 - 130.0) * step))) + ',' + Math.floor(Math.max(132.0, 132.0 + ((213.0 - 132.0) * step))) + ',' + Math.floor(Math.max(132.0, 132.0 + ((212.0 - 132.0) * step))) + ')');
      $('article header').css('background-color', 'rgb(' + Math.floor(Math.max(78.0, 78.0 + ((220.0 - 78.0) * step))) + ',' + Math.floor(Math.max(83.0, 83.0 + ((213.0 - 83.0) * step))) + ',' + Math.floor(Math.max(84.0, 84.0 + ((212.0 - 84.0) * step))) + ')');
      $('article header').css('color', 'rgb(' + Math.floor(Math.max(47.0, 47.0 + ((220.0 - 47.0) * step))) + ',' + Math.floor(Math.max(56.0, 56.0 + ((213.0 - 56.0) * step))) + ',' + Math.floor(Math.max(58.0, 58.0 + ((212.0 - 58.0) * step))) + ')');
      $('article header h1').css('color', 'rgb(' + Math.floor(Math.min(137.0, 137.0 + ((98.0 - 137.0) * step))) + ',' + Math.floor(Math.min(139.0, 139.0 + ((103.0 - 139.0) * step))) + ',' + Math.floor(Math.min(139.0, 139.0 + ((104.0 - 139.0) * step))) + ')');
      $('article header h1').css('border-bottom', '1px solid ' + 'rgb(' + Math.floor(Math.max(91.0, 91.0 + ((220.0 - 91.0) * step))) + ',' + Math.floor(Math.max(93.0, 93.0 + ((213.0 - 93.0) * step))) + ',' + Math.floor(Math.max(93.0, 93.0 + ((212.0 - 93.0) * step))) + ')');
      if (step >= 0.5) {
        $('.subtitle').css('visibility', 'hidden');
      } else {
        $('.subtitle').css('visibility', 'visible');
      }
      $('#syndicate').css('top', $('body>header').outerHeight() - $('#syndicate').innerHeight() - 2);
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
