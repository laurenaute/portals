class Adventure < ApplicationRecord
  belongs_to :character
  belongs_to :user
  has_many :messages, dependent: :nullify

  validates :character_name, presence: true
  validates :difficulty, presence: true
  validates :choices, presence: true, on: :update
  validates :save_adventure, presence: true, on: :update
end
