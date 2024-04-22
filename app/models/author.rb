class Author < ApplicationRecord
  has_many :books

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true, numericality: { greater_than: 0, message: "there are no negative ages, wtf?"}
  validates :age, numericality: { less_than: 150, message: "you're not that old, are you?"}

end