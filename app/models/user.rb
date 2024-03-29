class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates :city, presence: true



end
