class Adventure < ApplicationRecord
  belongs_to :character
  belongs_to :user

  validates :character_name, presence: true
  validates :difficulty, presence: true
  validates :choices, presence: true
  validates :save_adventure, presence: true
end
