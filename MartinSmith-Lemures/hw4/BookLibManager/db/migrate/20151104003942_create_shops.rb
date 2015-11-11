class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :ShopName
      t.string :Address
      t.string :website
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
