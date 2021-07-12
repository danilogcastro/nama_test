class AddBuyerToSales < ActiveRecord::Migration[6.0]
  def change
    add_reference :sales, :buyer, null: false, foreign_key: true
  end
end
