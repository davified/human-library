class AddColumnsToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :start_time, :time
    add_column :events, :no_of_books, :integer
    add_column :events, :no_of_ppl_per_book, :integer
    add_column :events, :no_of_slots, :integer
    add_column :events, :duration_per_slot, :integer
  end
end
