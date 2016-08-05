
10.times do
  Product.create(
      description: Faker::Lorem.sentence(3),
      color_id: Faker::Number.between(1,2),    
      size_id: Faker::Number.between(1,3),   
      product_modelo: Faker::Number.between(1,2), 
      quantity: Faker::Number.between(1,15)
      )
end
