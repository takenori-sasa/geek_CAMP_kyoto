class CreateEdges < ActiveRecord::Migration[6.0]
  def change
    create_table :edges do |t|
      t.integer :parent_id
      t.integer :child_id

      t.timestamps
    end
    add_index :edges, :parent_id
    add_index :edges, :child_id
    add_index :edges, %i[parent_id child_id], unique: true
  end
end
