class Connect < ApplicationRecord
  belongs_to :requestor, :foreign_key => :requestor_id, class_name: 'User'
  belongs_to :requestee, :foreign_key => :requestee_id, class_name: 'User'
  belongs_to :user_pair

  before_validation :set_user_pair

  def set_user_pair
    self.user_pair = UserPair.find_or_initialize_by(user_1: requestor, user_2: requestee)
  end
end
