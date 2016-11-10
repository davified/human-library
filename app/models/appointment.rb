class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :book
  belongs_to :event
  belongs_to :slot
end
