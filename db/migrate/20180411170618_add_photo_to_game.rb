class AddPhotoToGame < ActiveRecord::Migration[5.1]
  def change
    add_reference :games, :photo, foreign_key: true
  end
end
