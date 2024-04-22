class BookGenre < ApplicationRecord
  belongs_to :book
  belongs_to :genre
end

#Find all the books that belong to the genre "Mystery"

#Book.joins(:genres).where(genres: {name: "Mystery"})