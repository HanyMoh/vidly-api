class Movie < ApplicationRecord
  belongs_to :genre

  validates :title, presence: true, allow_blank: false, length: { within: 3..255 }
  validates_uniqueness_of :title, case_sensitive: false
  validates :genre, :number_in_stock, :daily_rental_rate, presence: true
  validates :number_in_stock, :daily_rental_rate, numericality: { greater_than_or_equal_to: 0 }
  validates :number_in_stock, inclusion: { in: 0...100 }
  validates :daily_rental_rate, inclusion: { in: 0...10 }
end
