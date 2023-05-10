class Recipe < ApplicationRecord
    belongs_to :user
    has_many :favourites, dependent: :destroy
    has_many :favourited_by_users, through: :favourites, source: :user
    has_one_attached :image
end
