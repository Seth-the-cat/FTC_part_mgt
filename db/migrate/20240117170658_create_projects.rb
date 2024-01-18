class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.references :part, null: false, foreign_key: true
      t.references :project_type, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
