class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  accepts_nested_attributes_for :books

  validates :first_name, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 0, message: "negative age is not allowed" }
  validates :last_name, presence: true, length: { maximum: 10 }



  def name
    "#{first_name} #{last_name}"
  end
  
  def name_age
    "#{first_name} #{last_name} (#{age})"
  end

end