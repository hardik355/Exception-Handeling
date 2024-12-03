# Clear existing records
Product.destroy_all

# Create 10 dummy products
10.times do |i|
  Product.create!(
    title: "Product #{i + 1}",
    sub_title: "Sub-title #{i + 1}",
    desc: "This is a description for Product #{i + 1}.",
    price: rand(10.0..100.0).round(2),
    tag: ["New", "Featured", "Sale"].sample
  )
end

puts "10 dummy products created successfully!"


# db/seeds.rb

Product.create([
  {
    title: "Apple iPhone 14",
    sub_title: "128GB, Midnight",
    desc: "The latest iPhone with A15 Bionic chip and improved camera.",
    price: 799.99,
    tag: "electronics"
  },
  {
    title: "Nike Air Max 270",
    sub_title: "Men's Running Shoes",
    desc: "Lightweight and breathable running shoes with maximum comfort.",
    price: 150.00,
    tag: "shoes"
  },
  {
    title: "Sony WH-1000XM5",
    sub_title: "Wireless Noise-Cancelling Headphones",
    desc: "Industry-leading noise-cancellation and exceptional sound quality.",
    price: 399.99,
    tag: "electronics"
  },
  {
    title: "Samsung Galaxy S23 Ultra",
    sub_title: "256GB, Phantom Black",
    desc: "High-end smartphone with a stunning display and powerful performance.",
    price: 1199.99,
    tag: "electronics"
  },
  {
    title: "Adidas Ultraboost 22",
    sub_title: "Women's Running Shoes",
    desc: "Designed for energy return and supreme comfort for runners.",
    price: 180.00,
    tag: "shoes"
  },
  {
    title: "Dyson Airwrap Complete",
    sub_title: "Hair Styling Tool",
    desc: "Versatile hair styling tool with innovative technology for curls and waves.",
    price: 599.99,
    tag: "beauty"
  },
  {
    title: "Apple MacBook Air",
    sub_title: "M2 Chip, 256GB SSD",
    desc: "Lightweight laptop with exceptional performance and long battery life.",
    price: 999.99,
    tag: "electronics"
  },
  {
    title: "Casio G-Shock Watch",
    sub_title: "Black Resin Band",
    desc: "Durable, water-resistant, and shockproof watch for outdoor enthusiasts.",
    price: 99.99,
    tag: "accessories"
  },
  {
    title: "Canon EOS R50",
    sub_title: "Mirrorless Camera",
    desc: "Compact and powerful camera for professional-quality photography.",
    price: 849.00,
    tag: "electronics"
  },
  {
    title: "Levi's 501 Original Fit Jeans",
    sub_title: "Men's Denim",
    desc: "Classic denim jeans with a timeless design.",
    price: 69.99,
    tag: "clothing"
  }
])
