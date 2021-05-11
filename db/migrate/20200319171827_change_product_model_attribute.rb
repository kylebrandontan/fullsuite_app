class ChangeProductModelAttribute < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :price, :integer
    change_column :products, :cost_of_goods, :integer
  end
end
