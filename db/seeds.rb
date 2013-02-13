# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.create(:event_name => 'NodeConf', :event_location => 'San Francisco, CA', :event_description => "Conference about Node.js held at Walker Creek Ranch")
Event.create(:event_name => 'EmberCamp', :event_location => 'San Francisco, CA', :event_description => "First annual Ember.js conference")