class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_and_belongs_to_many :characters
  has_many :locations
end
