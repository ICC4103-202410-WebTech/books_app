# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Book.create(title: "The Great Gatsby", author: "F. Scott Fitzgerald", year: 1925, price: 999, publish_date: "1925-04-10")
Book.create(title: "To Kill a Mockingbird", author: "Harper Lee", year: 1960, price: 799, publish_date: "1960-07-11")
Book.create(title: "1984", author: "George Orwell", year: 1949, price: 899, publish_date: "1949-06-08")
Book.create(title: "Pride and Prejudice", author: "Jane Austen", year: 1813, price: 699, publish_date: "1813-01-28")

Author.create(first_name: "F. Scott", last_name: "Fitzgerald", age: 44)
Author.create(first_name: "Harper", last_name: "Lee", age: 89)
Author.create(first_name: "George", last_name: "Orwell", age: 46)
Author.create(first_name: "Jane", last_name: "Austen", age: 41)