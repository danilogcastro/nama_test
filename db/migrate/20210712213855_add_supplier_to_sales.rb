class AddSupplierToSales < ActiveRecord::Migration[6.0]
  def change
    add_reference :sales, :supplier, null: false, foreign_key: true
  end
end
