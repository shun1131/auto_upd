class Restaurant < ActiveRecord::Base
  has_one :schedule, foreign_key: 'restaurant_id'
end
