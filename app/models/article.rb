class Article < ApplicationRecord
    # Many to One Assocation to User
    belongs_to :user

    validates :title, presence: true, length: { minimum: 6, maximum: 100 }
    validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end