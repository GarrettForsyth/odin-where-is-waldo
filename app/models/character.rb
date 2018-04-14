class Character < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_and_belongs_to_many :photos
  has_and_belongs_to_many :games
  has_many :locations

  validates :name, presence: true
  validates :image, presence: true
end
