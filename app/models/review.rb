class Review < ApplicationRecord
    belongs_to :reviewer, class_name: "User", foreign_key: "user_id"
  


    belongs_to :user
    belongs_to :movie

    validates :rating, presence: true
    validates :comment, presence: true
end