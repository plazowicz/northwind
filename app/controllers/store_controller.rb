class StoreController < ApplicationController
  def index
  end

  def search
    name = params[:name]
    @product = Product.find_by_ProductName(name)
    redirect_to product_url(@product)
  end

  def show
    puts params
    @country = params[:country]
    @customers = Customer.find_all_by_Country(@country)
  end

end
