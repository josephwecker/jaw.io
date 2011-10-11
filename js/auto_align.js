(function() {
  $(function() {
    var gifdat, style;
    gifdat = 'data:image/gif;base64,R0lGODlhAQABAID/AP///wAAACwAAAAAAQABAAACAkQBADs=';
    style = 'visibility: hidden;';
    return $('.atxt,p,h1,h2,h3,h4,h5,h6,span,ol,ul').append('<img src="' + gifdat + '" style="' + style + '" class="__autoalign__"/>').css('opacity', 0.01);
  });
  $(window).load(function() {
    var disqus_identifier, disqus_shortname, disqus_url, dsq;
    $('.__autoalign__').each(function() {
      var $parent, currt, offset, relap;
      $parent = $(this).parent();
      currt = $(this).offset().top + 1;
      offset = 29 - (currt % 29);
      if (offset === 29) {
        offset = 0;
      }
      relap = offset - ($(this).offset().top + 1 - $parent.offset().top - $parent.innerHeight());
      if (offset !== 0) {
        $parent.css('padding-top', function(_, v) {
          return parseFloat(v) + offset;
        });
      }
      if (relap !== 0) {
        $parent.css('margin-bottom', function(_, v) {
          return parseFloat(v) - relap;
        });
      }
      $(this).remove();
      return $parent.animate({
        'opacity': 1
      }, 550, 'swing');
    });
    disqus_shortname = window.disqus_shortname;
    disqus_identifier = window.disqus_identifier;
    disqus_url = window.disqus_url;
    dsq = document.createElement('script');
    dsq.type = 'text/javascript';
    dsq.async = true;
    dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
    return (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
  });
}).call(this);
