json.extract! about, :id, :title, :body, :img_url, :created_at, :updated_at
json.url about_url(about, format: :json)
