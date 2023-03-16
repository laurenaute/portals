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
  validates :name, uniqueness: { scope: :universe }

  def get_max_asset
    assets = {
      for: strength,
      dex: dexterity,
      end: constitution,
      int: intelligence,
      sag: wisdom,
      cha: charisma
    }

    # recuperer le nom de la cle dont la valeur est la plus grande
    # renvoyer un hash avec la clé et al valeur associé
    assets.max_by { |_k, v| v }
  end

  def get_min_asset
    assets = {
      for: strength,
      dex: dexterity,
      end: constitution,
      int: intelligence,
      sag: wisdom,
      cha: charisma
    }

    # recuperer le nom de la cle dont la valeur est la plus grande
    # renvoyer un hash avec la clé et al valeur associé
    assets.min_by { |_k, v| v }
  end
end
