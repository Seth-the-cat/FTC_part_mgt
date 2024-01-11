class CreateGrants < ActiveRecord::Migration[7.1]
  def change
    create_table :grants do |t|
      t.references :right, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
