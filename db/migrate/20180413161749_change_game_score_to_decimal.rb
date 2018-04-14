class ChangeGameScoreToDecimal < ActiveRecord::Migration[5.1]
  def change
    change_column :games, :score, 'numeric USING CAST(score AS numberic)'
  end
end
