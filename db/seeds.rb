5.times do
  category = Category.create name: FFaker::Product.brand
end

categories = Category.all.to_a

15.times do
  category = categories.sample
  category.products.create name: FFaker::Product.model, price: 100 + rand(100)
end
