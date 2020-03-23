class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit; end

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

  def updated
    if @product.update(product_params)
      flash.notice = 'Successfully updated product.'

      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def delete
  end


private

  def product_params
    params.require(:product).permit(:name, :sku, :price, :cost_of_goods)
  end
end
