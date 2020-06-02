class CreateFoos < ActiveRecord::Migration[6.0]
  def change
    create_table :foos do |t|
      t.timestamps
      t.string :name
    end
  end
end
