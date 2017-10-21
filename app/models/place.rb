class Place < ApplicationRecord
  belongs_to :user
  has_many :comments

  geocoded_by :address
  after_validation :geocode

  validates :name, :address, :description, :photo, presence: true
  validates :name, length: { minimum: 3, too_short: "%{count} characters is the minimum allowed" }
end
