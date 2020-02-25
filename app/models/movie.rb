class Movie < ApplicationRecord
    # has_many :reviews
    # has_many :users, through: :reviews

    belongs_to :user
    has_attached_file :image, styles: { medium: "400x600#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	
end