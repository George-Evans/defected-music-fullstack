json.extract! catalogue, :id, :artist, :title, :img_url, :bio, :position, :media, :created_at, :updated_at
json.url catalogue_url(catalogue, format: :json)
