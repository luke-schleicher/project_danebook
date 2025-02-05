class CreateFriendings < ActiveRecord::Migration[5.0]
  def change
    create_table :friendings do |t|

      t.integer :friender_id
      t.integer :friendee_id

      t.timestamps
    end
    add_index :friendings, [:friender_id, :friendee_id], unique: true
  end
end
