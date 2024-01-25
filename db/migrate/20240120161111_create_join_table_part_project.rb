class CreateJoinTablePartProject < ActiveRecord::Migration[7.1]
  def change
    create_join_table :parts, :projects do |t|
      # t.index [:part_id, :project_id]
      # t.index [:project_id, :part_id]
    end
  end
end
