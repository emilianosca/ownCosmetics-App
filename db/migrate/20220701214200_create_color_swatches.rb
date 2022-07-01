class CreateColorSwatches < ActiveRecord::Migration[7.0]
  def change
    create_table :color_swatches do |t|
      t.integer :idFormula
      t.integer :idUser
      t.string :colorName
      t.string :colorHexa

      t.timestamps
    end
  end
end
