class Availability < ActiveRecord::Base
  belongs_to :waiter

  def self.days_select
    [
      ['Sunday'   , 6],
      ['Monday'   , 0],
      ['Tuesday'  , 1],
      ['Wednesday', 2],
      ['Thursday' , 3],
      ['Friday'   , 4],
      ['Saturday' , 5],
    ]
  end

  def day_string
    self.class.days_select.to_h.key(day_of_week)
  end
end
