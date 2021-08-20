class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # goes hand in hand in application_controller.rb, need validation if there is value
  validates :name, presence: true
  validates :role_type, presence: true
end