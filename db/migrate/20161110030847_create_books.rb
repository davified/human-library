class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
