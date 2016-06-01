json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :new_information, :feature, :feature_contents, :feature_flag, :vacancy, :vacancy_state, :running, :memo
  json.url restaurant_url(restaurant, format: :json)
end
