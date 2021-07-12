class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def create
    @record = FileParser.new(params[:sale][:uploaded_file]).parse
    raise
  end
end
