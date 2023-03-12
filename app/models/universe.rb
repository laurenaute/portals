class Universe < ApplicationRecord
  has_many :characters, dependent: :nullify

  validates :theme, presence: true
  validates :theme, uniqueness: true
  validates :description, presence: true
  validates :parameters, presence: true
  validates :initializer, presence: true
end
