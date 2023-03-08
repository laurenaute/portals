class Character < ApplicationRecord
  belongs_to :universe
  has_many :adventures, dependent: :nullify

  validates :description, presence: true
  validates :universe, presence: true
  validates :strength, presence: true
  validates :dexterity, presence: true
  validates :constitution, presence: true
  validates :intelligence, presence: true
  validates :wisdom, presence: true
  validates :charisma, presence: true

  def get_best_asset
    assets = {
      strength: strength,
      dexterity: dexterity,
      constitution: constitution,
      intelligence: intelligence,
      wisdom: wisdom,
      charisma: charisma
    }
    # recuperer le nom de la cle dont la valeur est la plus grande
    assets.max
    # renvoyer un hash avec la clé et al valeur associé
  end
end
