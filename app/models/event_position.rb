class EventPosition < ActiveRecord::Base
  belongs_to :event
  belongs_to :waiter
  belongs_to :waiter_skill
end
