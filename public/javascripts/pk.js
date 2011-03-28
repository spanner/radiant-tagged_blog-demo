(function($) { 
  $.fn.keepInView = function() { 
    this.each(function() {
      var self = $(this);
      var margin = 10;
      var initial_offset = self.offset();
      var threshold = parseInt(initial_offset.top, 10) - margin;
      var loose_css = {
        position: self.css('position'),
        top: self.css('top'),
        left: self.css('top')
      };
      $(window).scroll(function () {
        var scroll = $(this).scrollTop();
        var top = self.offset().top - scroll;
        var left = self.offset().left;
        if (top < margin) top = margin;
        if (scroll >= threshold && !$.data(this, 'pinned')) {
          self.css({
            position: 'fixed',
            top: top,
            left: left
          });
          $.data(this, 'pinned', true);
        } else if (scroll < threshold && $.data(this, 'pinned')){
          self.css(loose_css);
          $.data(this, 'pinned', false);
        }
      });
    });
    return this;
  };
})(jQuery);

$(function() {
  $("#navigation").keepInView().mouseenter(function () {
    $(this).fadeIn('fast');
  }).mouseleave(function () {
    $(this).fadeTo('slow', 0.5);
  }).trigger('mouseleave');
});
