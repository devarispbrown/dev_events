App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map -> 
  @resource 'events', ->
    @route 'new'
    @route 'edit'
      path: '/:event_id/edit'
    @route 'show'
      path: '/:event_id'

App.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

App.EventsRoute = Ember.Route.extend
  setupController: ->
    @controllerFor('application').set('currentRoute', 'events')

App.EventsIndexRoute = App.EventsRoute.extend
  model: ->
    App.Event.find()
  setupController: (controller, model) ->
    @_super()
    controller.set('events', model)

App.EventsShowRoute = App.EventsRoute.extend    
  model: (params) ->
    App.Event.find(params.event_id)
  setupController: (controller, model) ->
    @_super()
    controller.set('content', model)

App.EventsNewRoute = App.EventsRoute.extend
  model: ->
    App.Event.createRecord()
  setupController: (controller, model) ->
    @_super()
    controller.set('content', model)