class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :book, foreign_key: true
      t.belongs_to :event, foreign_key: true
      t.belongs_to :slot, foreign_key: true

      t.timestamps
    end
  end
end
