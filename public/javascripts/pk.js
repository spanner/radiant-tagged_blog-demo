(function($) { 
  $.fn.keepInView = function(margin) { 
    this.each(function() {
      var self = $(this);
      margin = margin || 0;
      var initial_offset = self.offset();
      var threshold = parseInt(initial_offset.top, 10) - margin;

      var loose_css = {
        position: self.css('position'),
        top: self.css('top'),
        left: self.css('top')
      };
      
      $(window).scroll(function () {
        var scroll = $(this).scrollTop();
        var element = self[0];
        var top = self.offset().top - scroll;
        var left = self.offset().left;
        if (top < margin) top = margin;
        if (scroll >= threshold && !$.data(element, 'pinned')) {
          self.css({
            position: 'fixed',
            top: top,
            left: left
          });
          $.data(element, 'pinned', true);
        } else if (scroll < threshold && $.data(element, 'pinned')){
          self.css(loose_css);
          $.data(element, 'pinned', false);
        }
      });
    });
    return this;
  };
})(jQuery);

$(function() {
  $('#navigation').keepInView(12);
  // $('#masthead').keepInView(0);
  // $("#navigation").mouseenter(function () {
  //   $(this).fadeIn('fast');
  // }).mouseleave(function () {
  //   $(this).fadeTo('slow', 0.5);
  // }).trigger('mouseleave');
});
