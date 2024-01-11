class CreateRights < ActiveRecord::Migration[7.1]
  def change
    create_table :rights do |t|
      t.string :resource
      t.string :operation

      t.timestamps
    end
  end
end
