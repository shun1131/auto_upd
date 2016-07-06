class Restaurant < ActiveRecord::Base
  has_one    :schedule, foreign_key: 'restaurant_id'
  has_many   :records,  foreign_key: 'restaurant_id'
end
