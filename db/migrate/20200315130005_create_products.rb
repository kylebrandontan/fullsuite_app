class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :name
      t.decimal :price
      t.decimal :cost_of_goods

      t.timestamps
    end
  end
end
