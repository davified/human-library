json.extract! book, :id, :user, :category, :description, :image_url, :created_at, :updated_at
json.url book_url(book, format: :json)