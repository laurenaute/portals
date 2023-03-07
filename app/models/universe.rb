class Universe < ApplicationRecord
  has_many :characters

  validates :theme, presence: true
  validates :description, presence: true
  validates :parameters, presence: true
end
