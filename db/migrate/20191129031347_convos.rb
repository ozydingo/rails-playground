class Convos < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
    end

    create_table :convos do |t|
      t.references :sender
      t.references :recipient
    end

    create_table :connects do |t|
      t.references :requestor
      t.references :requestee
    end
  end
end
