class CreateSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :slots do |t|
      t.belongs_to :event, foreign_key: true
      t.time :start_time
      t.time :end_time
      t.integer :pax_capacity
      t.boolean :is_available

      t.timestamps
    end
  end
end
