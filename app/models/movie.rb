class Movie < ApplicationRecord
  belongs_to :genre

  validates :title, presence: true, allow_blank: false, length: { within: 3..255 }
  validates_uniqueness_of :title, case_sensitive: false
  validates :genre, :numberInStock, :dailyRentalRate, presence: true
  validates :numberInStock, :dailyRentalRate, numericality: { greater_than_or_equal_to: 0 }
  validates :numberInStock, inclusion: { in: 0...100 }
  validates :dailyRentalRate, inclusion: { in: 0...10 }
end
