class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :tweets
	validates :user_name, length: { in: 1..20 },presence: true
	validates :introduction, length: { maximum:  100}

end
