class Recipe < ApplicationRecord
    belongs_to :user
    has_many :favourites, dependent: :destroy
    has_many :favourited_by_users, through: :favourites, source: :user
    has_one_attached :image

    # Form Validations    
    validates :name, presence: true
    validates :description, presence: true
    # validates :name, presence: true

    def self.search(params)
        params[:query].blank? ? all : where(
            "name LIKE?", "%#{sanitize_sql_like(params[:query])}%"
        )
    end    
end
