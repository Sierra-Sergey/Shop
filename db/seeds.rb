# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Category.create([{title: 'CPU'}, {title: 'Videocards'}])

Product.create(title: 'Intel core i5 9400F', category: Category.find_by(title: 'CPU'), price: rand(5000..15000), description: 'Some description for this product')
Product.create(title: 'Intel core i5 10400F', category: Category.find_by(title: 'CPU'), price: rand(5000..15000), description: 'Some description for this product')
Product.create(title: 'Intel core i5 11400F', category: Category.find_by(title: 'CPU'), price: rand(5000..15000), description: 'Some description for this product')
Product.create(title: 'Intel core i5 12400F', category: Category.find_by(title: 'CPU'), price: rand(5000..15000), description: 'Some description for this product')
Product.create(title: 'Ryzen 5 3600', category: Category.find_by(title: 'CPU'), price: rand(5000..15000), description: 'Some description for this product')
Product.create(title: 'Ryzen 5 3600X', category: Category.find_by(title: 'CPU'), price: rand(5000..15000), description: 'Some description for this product')


Product.create(title: 'RTX 2060', category: Category.find_by(title: 'Videocards'), price: rand(5000..15000), description: 'Some description for this product')
Product.create(title: 'RTX 2060 Super', category: Category.find_by(title: 'Videocards'), price: rand(5000..15000), description: 'Some description for this product')
Product.create(title: 'RTX 2070', category: Category.find_by(title: 'Videocards'), price: rand(5000..15000), description: 'Some description for this product')
Product.create(title: 'RTX 2080', category: Category.find_by(title: 'Videocards'), price: rand(5000..15000), description: 'Some description for this product')
Product.create(title: 'RTX 3060', category: Category.find_by(title: 'Videocards'), price: rand(5000..15000), description: 'Some description for this product')
Product.create(title: 'RTX 3070', category: Category.find_by(title: 'Videocards'), price: rand(5000..15000), description: 'Some description for this product')
Product.create(title: 'RTX 3080', category: Category.find_by(title: 'Videocards'), price: rand(5000..15000), description: 'Some description for this product')
Product.create(title: 'RTX 3090', category: Category.find_by(title: 'Videocards'), price: rand(5000..15000), description: 'Some description for this product')

User.create(email: 'qwe@qwe.qwe', password: 'qweqwe', admin: true)
