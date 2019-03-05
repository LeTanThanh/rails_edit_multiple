class ProductsController < ApplicationController
  def index
    @products = Product.all.includes(:category)
  end
end
