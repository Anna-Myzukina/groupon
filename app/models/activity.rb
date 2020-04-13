class Activity < ApplicationRecord
    belongs_to :author, class_name: 'User'

    validates :name, presence: true
    validates :hours, presence: true
end
