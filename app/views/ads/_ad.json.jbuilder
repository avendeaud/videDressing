json.extract! ad, :id, :user_id, :name, :description, :price, :address, :created_at, :updated_at
json.url ad_url(ad, format: :json)