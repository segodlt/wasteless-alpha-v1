class Measure < ApplicationRecord
  belongs_to :ingredient
  belongs_to :user
  belongs_to :unit
end
