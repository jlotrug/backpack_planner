class Destination < ApplicationRecord
  belongs_to :trip
  has_many :hotels
  has_many :experiences
end
