class Destination < ApplicationRecord
  belongs_to :trip
  has_many :hotels
  has_many :experiences
  has_one :transport_to
  has_one :transport_from
end
