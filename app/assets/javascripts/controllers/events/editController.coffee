App.EventsEditController = Ember.ObjectController.extend
  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'events.index'
    
  save: ->
    @store.commit()
    @transitionToRoute 'events.show', @content

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionToRoute 'events.show', @content

  headerTitle: 'Edit'
  buttonTitle: 'Update'