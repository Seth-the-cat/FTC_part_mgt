class RemoveFieldDataIdFromProject < ActiveRecord::Migration[7.1]
  def change
    remove_column :projects, :part_id, :integer
  end
end
