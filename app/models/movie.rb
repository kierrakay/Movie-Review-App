class Movie < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    # belongs_to :user
	# has_many :reviews
end
