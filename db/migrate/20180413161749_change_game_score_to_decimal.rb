class ChangeGameScoreToDecimal < ActiveRecord::Migration[5.1]
  def change
    change_column :games, :score, :decimal
  end
end
