class UserPairs < ActiveRecord::Migration[6.0]
  def change
    create_table :user_pairs do |t|
      t.references :user_1
      t.references :user_2
    end

    add_column :convos, :user_pair_id, :integer
    add_column :connects, :user_pair_id, :integer
  end
end
