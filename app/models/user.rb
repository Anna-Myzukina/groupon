class User < ApplicationRecord
    validates :name,  presence: true, length: { maximum: 50 }

    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end
