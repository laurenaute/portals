require 'securerandom'

class User < ApplicationRecord
  has_many :adventures, dependent: :nullify
  has_many :messages, dependent: :nullify

  before_save :generate_token

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates :email, presence: true
  validates :api_token, uniqueness: true

  def generate_token(length = 50)
    loop do
      api_token = self.api_token = SecureRandom.urlsafe_base64(length, false)
      break api_token unless self.class.exists?(api_token: api_token)
    end
  end
end
