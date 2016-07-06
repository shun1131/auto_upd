class Record < ActiveRecord::Base
  belongs_to   :restaurant,  foreign_key: 'restaurant_id'

  # operator/history  ransack用scope
  scope :created_at_from, -> (date){
    where("records.created_at >= ?", date.in_time_zone('Tokyo'))
  }

  scope :created_at_to, -> (date){
    where("records.created_at <= ?", date.in_time_zone('Tokyo'))
  }

  def self.ransackable_scopes(auth_object = nil)
    %i[created_at_from created_at_to]
  end
end
