class Group < ApplicationRecord
  mount_uploader :icon, ImageUploader
  has_and_belongs_to_many :activities, dependent: :destroy 
end
