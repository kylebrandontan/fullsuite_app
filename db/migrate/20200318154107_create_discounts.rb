class CreateDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      t.boolean :discount
      t.decimal :discount_percentage

      t.timestamps
    end
  end
end
