class AddCoverPhotoToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :cover_photo_id, :integer
    add_index :profiles, :cover_photo_id
  end
end
