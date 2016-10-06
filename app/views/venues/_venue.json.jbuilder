json.extract! venue, :id, :name, :shortName, :city, :state, :created_at, :updated_at
json.url venue_url(venue, format: :json)