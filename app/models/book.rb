class Book < ApplicationRecord
  belongs_to :category
  has_many :appointments
  belongs_to :user
end
