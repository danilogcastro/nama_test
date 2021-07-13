module ApplicationHelper
  def sale_total(sale)
    total = sale.quantity * sale.unit_price
    number_to_currency(total, unit: "R$", separator: ",", delimiter: ".")
  end

  def total_gross(sales)
    sales_array = sales.map do |sale|
      total = sale.quantity * sale.unit_price
    end
    number_to_currency(sales_array.sum, unit: "R$", separator: ",", delimiter: ".")
  end
end
