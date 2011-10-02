(function() {
  $(function() {
    var gifdat, style;
    gifdat = 'data:image/gif;base64,R0lGODlhAQABAID/AP///wAAACwAAAAAAQABAAACAkQBADs=';
    style = 'visibility: hidden;';
    return $('.atxt,p,h1,h2,h3,h4,h5,h6,span').append('<img src="' + gifdat + '" style="' + style + '" class="__autoalign__"/>').css('opacity', 0);
  });
  $(window).load(function() {
    return $('.__autoalign__').each(function() {
      var offset, parent;
      offset = $(this).offset().top - $(this).parent().offset().top + 2 - $(this).parent().innerHeight();
      parent = $(this).parent();
      if (offset !== 0) {
        parent.css('padding-top', function(_, pt) {
          return parseFloat(pt) - offset;
        }).css('margin-bottom', function(_, mb) {
          return parseFloat(mb) + offset;
        });
      }
      $(this).remove();
      return parent.animate({
        'opacity': 1
      }, 750, 'swing');
    });
  });
}).call(this);
