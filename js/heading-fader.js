(function() {
  $(function() {
    return $(window).scroll(function() {
      return $('article h2').each(function() {
        var $t, d;
        $t = $(this);
        if ($t.attr('id') === 'section-title') {
          return;
        }
        d = $t.offset().top - $(window).scrollTop() - $('body>header').outerHeight(false);
        if (d < -30) {
          $('#section-title').text($t.text());
          return $t.css('opacity', 0.0);
        } else if (d < 0) {
          return $t.css('opacity', 1.0 + (d / 30));
        } else {
          return $t.css('opacity', 1.0);
        }
      });
    });
  });
}).call(this);
