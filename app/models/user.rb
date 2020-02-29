class User < ApplicationRecord
  acts_as_authentic do |config|
    config.crypto_provider = Authlogic::CryptoProviders::V2::SHA512
  end

  validates :password,
    confirmation: { if: :require_password? },
    length: {
      minimum: 8,
      if: :require_password?
    }
  validates :password_confirmation,
    length: {
      minimum: 8,
      if: :require_password?
  }
end
