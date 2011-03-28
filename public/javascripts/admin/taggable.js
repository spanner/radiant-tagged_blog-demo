Event.addBehavior({
  'input.toggle': Toggle.CheckboxBehavior({
    onLoad: function(link) {
      if (!this.checked) Toggle.hide(this.toggleWrappers, this.effect);
    }
  })
});