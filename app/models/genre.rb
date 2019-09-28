class Genre < ApplicationRecord
  has_many :movies

  validates :name, presence: true, allow_blank: false, length: { within: 5..50 }
  validates_uniqueness_of :name, case_sensitive: false
end
