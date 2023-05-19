class User < ApplicationRecord
  require 'securerandom'
  before_create :generate_authentication_token
  has_many :rankings

  private

  def generate_authentication_token
    self.uuid = SecureRandom.uuid
    self.token = SecureRandom.hex(32)
  end
end
