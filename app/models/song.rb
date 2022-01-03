class Song < ApplicationRecord
  belongs_to :genre
  has_many :likes
  validates :name, presence: true
end
