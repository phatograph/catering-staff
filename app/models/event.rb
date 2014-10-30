class Event < ActiveRecord::Base
  belongs_to :client
  has_many :event_positions
  default_scope { order('created_at DESC') }
end
