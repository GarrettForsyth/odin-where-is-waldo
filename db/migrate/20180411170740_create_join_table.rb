class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :games, :characters do |t|
      # t.index [:game_id, :character_id]
      # t.index [:character_id, :game_id]
    end
  end
end
