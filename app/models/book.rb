class Book < ActiveRecord::Base
  belongs_to :author
  has_many :book_genres
  has_many :genres, through: :book_genres

  validates :title, presence: true, uniqueness: true

  before_save :set_time_now_publish_date

  after_save :log_published_date

  def set_time_now_publish_date
    self.publish_date = Time.zone.now
  end

  def log_published_date
    puts "Book #{title} was published on #{publish_date}"
  end
end