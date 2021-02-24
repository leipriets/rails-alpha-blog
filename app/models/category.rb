class Category < ApplicationRecord

    validates :name, presence: true, length: { minimum: 3, maximum: 25 }
    validates_uniqueness_of :name
 
    # Many to Many Assocated with article_categories table and article
    has_many :article_categories
    has_many :articles, through: :article_categories
end