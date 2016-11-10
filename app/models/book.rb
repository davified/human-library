class Book < ApplicationRecord
  has_one :category

  has_many :appointments

  belongs_to :user
end
