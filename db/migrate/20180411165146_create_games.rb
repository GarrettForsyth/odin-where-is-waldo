class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.numeric :score
      t.string :user

      t.timestamps
    end
  end
end
