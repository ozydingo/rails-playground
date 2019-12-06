class User < ApplicationRecord
  has_many :convos, ->(user) {
    unscope(:where).where("sender_id = :id OR recipient_id = :id", id: user.id)
  }
end
