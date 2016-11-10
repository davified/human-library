json.extract! appointment, :id, :user_id, :book_id, :event_id, :slot_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)