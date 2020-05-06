class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews
  has_one_attached :avatar

  validates :username, uniqueness: { case_sensitive: false }
  validate :validate_username


  def validate_username
	  if User.where(email: username).exists?
	    errors.add(:username, :invalid)
	  end
	end

end
