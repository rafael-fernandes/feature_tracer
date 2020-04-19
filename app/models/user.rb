class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true

  def self.find_by_email_address(email)
    self.find_by(email: email)
  end

  def teste
    "teste"
  end
end
