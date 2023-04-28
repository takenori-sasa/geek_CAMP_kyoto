class AddTakenAtToSpots < ActiveRecord::Migration[6.0]
  def up
    add_column :spots, :taken_at, :datetime, default: -> { 'now()' }
  end

  def down
    remove_column :spots, :taken_at, :datetime, default: -> { 'now()' }
  end
end
