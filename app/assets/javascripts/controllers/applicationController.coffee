App.ApplicationController = Ember.Controller.extend
  isHome: (->
    @get('currentRoute') == 'home'
  ).property('currentRoute')

  isEvents: (->
    @get('currentRoute') == 'events'
  ).property('currentRoute')