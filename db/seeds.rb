5.times do
  category = Category.create name: FFaker::Product.brand

  5.times do
    category.products.create name: FFaker::Product.model, price: 100 + rand(100)
  end
end
