class ChangeGameScoreToFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :games, :score, :real
  end
end
