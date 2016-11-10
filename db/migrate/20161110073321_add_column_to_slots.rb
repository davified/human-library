class AddColumnToSlots < ActiveRecord::Migration[5.0]
  def change
    add_column :slots, :remaining_capacity, :integer
  end
end
