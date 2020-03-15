class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.integer :count
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
