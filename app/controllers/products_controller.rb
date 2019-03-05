class ProductsController < ApplicationController
  def index
    @products = Product.all.includes(:category)
  end

  def edit_multiple
    @products = Product.includes(:category).where(id: params[:product_ids])
  end

  def update_multiple
    @products = Product.where(id: params[:product_ids].split)
    @products.each do |product|
      product.update_attributes product_params
    end

    redirect_to root_url
  end

  private

  def product_params
    params.require(:product).permit(:name, :category_id, :price)
  end
end
