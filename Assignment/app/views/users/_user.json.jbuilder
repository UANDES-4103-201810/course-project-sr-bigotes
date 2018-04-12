json.extract! user, :id, :user_name, :password, :name, :email, :phone, :personal_info, :created_at, :updated_at
json.url user_url(user, format: :json)
