json.extract! user, :id, :name, :email, :is_admin, :is_book, :created_at, :updated_at
json.url user_url(user, format: :json)