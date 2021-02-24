class Article < ApplicationRecord
    # Many to One Assocated with User
    belongs_to :user
    # Many to Many Assocated with article_categories table and category
    has_many :article_categories
    has_many :categories, through: :article_categories

    validates :title, presence: true, length: { minimum: 6, maximum: 100 }
    validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end