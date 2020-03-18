class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.boolean :vat
      t.decimal :vat_percentage
      t.boolean :service_charge
      t.decimal :service_charge_percentage

      t.timestamps
    end
  end
end
