App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map -> 
  @resource 'events', ->
    @route 'new'
    @route 'show'
      path: '/:event_id'

App.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

#App.EventsIndexRoute = Ember.Route.extend
#  setupController: (controller, model) ->
#    @controllerFor('application').set('currentRoute', 'events')
#
#App.EventsIndexRoute = Ember.Route.extend
#  model: ->
#    App.Event.find()
#  setupController: (controller, model) ->
#    controller.set('events', model)
#    @controllerFor('application').set('currentRoute', 'events')
#
#App.EventsShowRoute = Ember.Route.extend
#  model: (params) ->
#    App.Event.find(params.event_id)
#  setupController: (controller, model) ->
#    controller.set('content', model)
#    @controllerFor('application').set('currentRoute', 'events')

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