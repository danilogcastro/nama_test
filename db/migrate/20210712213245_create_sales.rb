class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.string :description
      t.decimal :unit_price
      t.integer :quantity

      t.timestamps
    end
  end
end
