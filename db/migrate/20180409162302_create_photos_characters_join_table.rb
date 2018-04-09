class CreatePhotosCharactersJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :photos, :characters do |t|
      # t.index [:photo_id, :character_id]
      # t.index [:character_id, :photo_id]
    end
  end
end
