json.extract! user, :id, :user_name, :password, :name, :email, :phone, :description, :created_at, :updated_at
json.url user_url(user, format: :json)
