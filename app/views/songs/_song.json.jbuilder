json.extract! song, :id, :name, :altName, :album, :coveredArtist, :created_at, :updated_at
json.url song_url(song, format: :json)