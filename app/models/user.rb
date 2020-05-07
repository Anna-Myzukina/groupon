class User < ApplicationRecord
  has_many :activities, foreign_key: :author_id, dependent: :destroy
  has_many :groups

  validates :name, presence: true, length: { maximum: 50 }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
