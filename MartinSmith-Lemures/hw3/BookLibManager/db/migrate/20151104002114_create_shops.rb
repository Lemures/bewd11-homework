class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :shopName
      t.string :address
      t.string :website
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
