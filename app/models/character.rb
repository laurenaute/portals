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
end
