class ProductsController < ApplicationController
  def index
    @products = Product.all.includes(:category)
  end

  def edit_multiple
    @products = Product.where(id: params[:product_ids])
  end

  def update_multiple
  end
end
