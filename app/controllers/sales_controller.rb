class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def create
    # binding.pry
    records = FileParser.new(params[:sale][:uploaded_file]).parse
    records.each do |record|
      @sale = Sale.new
      @sale.build_buyer
      @sale.build_supplier
      @sale.update(record)
      @sale.save
    end
    redirect_to sales_path, flash: { notice: 'Registros importados com sucesso!' }
  end

  private

  def sale_params
    params.require(:sale).permit(:description, :unit_price, :quantity, buyer_attributes: [:name, :address], supplier_attributes: [:name] )
  end
end
