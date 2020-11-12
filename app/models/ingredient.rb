class Ingredient < ApplicationRecord
  has_many :doses

  validates :name, uniqueness: { message: "Cet ingrédient existe déjà" }
  validates :name, presence: { message: "Vous devez saisir un ingrédient" }
end
