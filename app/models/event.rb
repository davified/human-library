class Event < ApplicationRecord
  has_many :slots
  
  has_many :appointments
  has_many :books, :through => :appointments
end
