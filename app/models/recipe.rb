class Recipe < ApplicationRecord
  belongs_to :category
  belongs_to :user

  has_many :measures
  has_many :ingredients, through: measures

  validates :title, :description, presence: true
end
