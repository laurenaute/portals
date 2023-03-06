class Character < ApplicationRecord
  belongs_to :universe
  has_many :adventures, dependent: :nullify
end
