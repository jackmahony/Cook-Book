class User < ApplicationRecord
  has_many :recipes
  has_many :favourites, dependent: :destroy
  has_many :favourite_recipes, through: :favourites, source: :recipe

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
