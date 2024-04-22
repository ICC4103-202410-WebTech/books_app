class Author < ApplicationRecord
  has_many :books

  validates :first_name, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 0, message: "negative age is not allowed" }
  validates :last_name, presence: true, length: { maximum: 10 }

end