class AddCoordToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :coord, :string
  end
end
