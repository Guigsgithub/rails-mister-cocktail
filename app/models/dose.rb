class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  # validates :cocktail_id, presence: true
  # validates :ingredient_id, presence: true

  validates :cocktail_id && :ingredient_id, uniqueness: true
end
