class Book < ActiveRecord::Base
  belongs_to :author
  has_many :book_genres
  has_many :genres, through: :book_genres

  validates :title, presence: true
  validates :year, presence: true
  validates :price, presence: true, numericality: { greater_than: 0, message: "the price must be greater than 0, we don't give books away for free" }

  before_save :set_publish_date

  def set_publish_date
    self.publish_date = Time.now if self.publish_date.nil?
  end

end