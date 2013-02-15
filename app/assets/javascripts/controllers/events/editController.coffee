App.EventsEditController = Ember.ObjectController.extend
  save: ->
    @store.commit()
    @transitionToRoute 'events.show', @content

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionToRoute 'events.show', @content