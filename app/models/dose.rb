class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :mesure, :quantity, :cocktail, :ingredient, presence: true
  validates :quantity, numericality: true
  validates_uniqueness_of :cocktail, scope: [:ingredient]
end
