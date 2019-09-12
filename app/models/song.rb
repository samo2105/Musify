class Song < ApplicationRecord
  belongs_to :playlist

  validates :artist, presence: true
  validates :name, presence: true
end
