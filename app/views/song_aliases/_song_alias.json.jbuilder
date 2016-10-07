json.extract! song_alias, :id, :song_id, :alias, :created_at, :updated_at
json.url song_alias_url(song_alias, format: :json)