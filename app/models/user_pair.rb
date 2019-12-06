class UserPair < ApplicationRecord
  belongs_to :user_1, class_name: "User"
  belongs_to :user_2, class_name: "User"

  before_save :sort_users

  scope :between, -> (user_1_id,user_2_id) do
    user_1_id, user_2_id = [user_1_id, user_2_id].sort
    where(user_1_id: user_1_id, user_2_id: user_2_id)
  end

  def sort_users
    if user_1.present? && user_2.present? && user_1.id > user_2.id
      self.user_1, self.user_2 = user_2, user_1
    end
  end
end
