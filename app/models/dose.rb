class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: { message: "Vous devez saisir une description" }

  validates :ingredient_id, uniqueness: { scope: :cocktail_id, message: "Cet ingrédient a déjà été ajouté" }
end
