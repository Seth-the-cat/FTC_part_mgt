class CreatePartsAssignments < ActiveRecord::Migration[7.1]
  def change
    create_table :parts_assignments do |t|
      t.references :part, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
