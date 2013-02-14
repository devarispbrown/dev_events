App.Event = DS.Model.extend(
  event_name:         DS.attr('string', defaultValue: '')
  event_location:     DS.attr('string')
  event_description:  DS.attr('string')
)