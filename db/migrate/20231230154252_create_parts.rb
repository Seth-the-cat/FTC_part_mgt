class CreateParts < ActiveRecord::Migration[7.1]
  def change
    create_table :parts do |t|
      t.string :part_number
      t.string :part_name
      t.references :manufacturer, null: false, foreign_key: true
      t.integer :quantity
      t.string :description

      t.timestamps
    end
  end
end
