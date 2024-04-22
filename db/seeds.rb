# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

a1 = Author.create(first_name: "F. Scott", last_name: "Fitzgerald", age: 44)
a2 = Author.create(first_name: "Harper", last_name: "Lee", age: 89)
a3 = Author.create(first_name: "George", last_name: "Orwell", age: 46)
a4 = Author.create(first_name: "Jane", last_name: "Austen", age: 41)

Book.create(title: "The Great Gatsby", year: 1925, price: 999, publish_date: "1925-04-10", author_id: a1.id)
Book.create(title: "To Kill a Mockingbird", year: 1960, price: 799, publish_date: "1960-07-11", author_id: a2.id)
Book.create(title: "1984", year: 1949, price: 899, publish_date: "1949-06-08", author_id: a3.id)
Book.create(title: "Pride and Prejudice", year: 1813, price: 699, publish_date: "1813-01-28", author_id: a4.id)

Genre.create(name: "Fiction")
Genre.create(name: "Non-Fiction")
Genre.create(name: "Science Fiction")
Genre.create(name: "Fantasy")
Genre.create(name: "Mystery")
Genre.create(name: "Romance")
Genre.create(name: "Horror")
Genre.create(name: "Thriller")

BookGenre.create(book_id: 1, genre_id: 1)
BookGenre.create(book_id: 2, genre_id: 1)
BookGenre.create(book_id: 3, genre_id: 1)
BookGenre.create(book_id: 4, genre_id: 1)
BookGenre.create(book_id: 1, genre_id: 6)
BookGenre.create(book_id: 2, genre_id: 6)
BookGenre.create(book_id: 3, genre_id: 3)
BookGenre.create(book_id: 4, genre_id: 6)
BookGenre.create(book_id: 1, genre_id: 7)
BookGenre.create(book_id: 2, genre_id: 7)
BookGenre.create(book_id: 3, genre_id: 7)
BookGenre.create(book_id: 4, genre_id: 7)
BookGenre.create(book_id: 4, genre_id: 7)
BookGenre.create(book_id: 1, genre_id: 8)
BookGenre.create(book_id: 2, genre_id: 8)
BookGenre.create(book_id: 3, genre_id: 8)
BookGenre.create(book_id: 4, genre_id: 8)
BookGenre.create(book_id: 1, genre_id: 5)
BookGenre.create(book_id: 2, genre_id: 5)