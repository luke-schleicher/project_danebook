class DropLikesTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :likes_tables
  end
end
