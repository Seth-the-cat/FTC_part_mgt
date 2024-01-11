class CreateManufacturers < ActiveRecord::Migration[7.1]
  def change
    create_table :manufacturers do |t|
      t.string :manufacturer_name
      t.string :website

      t.timestamps
    end
  end
end
