class User < ApplicationRecord
  has_many :playlists

  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
end
