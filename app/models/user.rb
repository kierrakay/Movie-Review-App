class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  

  # has_many :reviews
  # has_many :reviewers, through: :reviews
  
  # belongs_to :movies

  has_many :reviews, dependent: :destroy
  #deletes reviews when user cancels account

  has_many :movies
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[github]

  validates :username, presence: true

  #we bypassed strong params for devise so we need this for username

  

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.username = auth.info.nickname
      user.password = Devise.friendly_token[0, 20]
    end
  end

 
end
