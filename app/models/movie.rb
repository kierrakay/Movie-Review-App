class Movie < ApplicationRecord
    searchkick

    # has_many :reviews
    # has_many :reviewers, through: :reviews, dependent: :destroy
    belongs_to :user


    has_many :reviews
has_many :users, through: :reviews


    has_attached_file :image, styles: { medium: "400x600#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    validates :title, presence: true, uniqueness: true
    validates :description, presence: true, length: { in: 20..500 }
    validates_format_of :movie_length, with: /\A\d{1}:\d{2}\z/, message: "Please format movie length as 0:00"
    #the {1} means one number infront of : is required. if we changed it to 2 it would require 2 numbers
    validates :director, presence: true, length: { in: 2..40 } 
    validates :rating, presence: true
    validates :image, presence: true

   
	
end



# belongs_to :users 
#only one user creates movie
