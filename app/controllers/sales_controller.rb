class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def create
    records = FileParser.new(params[:sale][:uploaded_file]).parse
    records.each do |record|
      @sale = Sale.new(record)
      @sale.save
    end
    redirect_to sales_path, notice: "Registros importados com sucesso"
  end

  private

  def sale_params
    params.require(:sale).permit(:description, :unit_price, :quantity, buyer_attributes: [:name, :address], supplier_attributes: [:name] )
  end
end
