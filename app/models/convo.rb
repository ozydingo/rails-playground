class Convo < ApplicationRecord
  belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
  belongs_to :recipient, :foreign_key => :recipient_id, class_name: 'User'
  belongs_to :user_pair

  before_validation :set_user_pair

  scope :involving, -> (user) do
    where("convos.sender_id =? OR convos.recipient_id =?",user.id,user.id)
  end

  scope :between, -> (sender_id,recipient_id) do
    joins(:user_pair).merge(UserPair.between(sender_id, recipient_id))
  end

  def set_user_pair
    self.user_pair = UserPair.find_or_initialize_by(user_1: sender, user_2: recipient)
  end
end
