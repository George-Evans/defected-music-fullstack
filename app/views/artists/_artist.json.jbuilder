json.extract! artist, :id, :order, :name, :bio, :img_url, :spotify_playlist, :fb, :insta, :twitter, :spotify, :created_at, :updated_at
json.url artist_url(artist, format: :json)
