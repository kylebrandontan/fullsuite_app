class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash.notice = "Successfully created a product."

      redirect_to product_path(@product)
    else
      render :new
    end
  end

private

  def product_params
    params.require(:product).permit(:name, :sku)
  end
end
