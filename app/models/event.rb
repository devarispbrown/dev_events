class Event < ActiveRecord::Base
  attr_accessible :event_description, :event_location, :event_name
end
