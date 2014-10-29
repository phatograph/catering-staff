class Event < ActiveRecord::Base
  belongs_to :client
  default_scope { order('created_at DESC') }
end
