class User < ApplicationRecord
  has_many :recipes
  has_many :favourites, dependent: :destroy
  has_many :favourite_recipes, through: :favourites, source: :recipe

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
        #  Google SSO
         :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_google(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end 

  # def self.from_google(u)
  #   create_with(uid: u[:uid], provider: 'google',
  #               password: Devise.friendly_token[0, 20]).find_or_create_by!(email: u[:email])
  # end




end
