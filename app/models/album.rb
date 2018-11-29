class Album < ApplicationRecord

  has_many :songs, dependent: :destroy

  validates_presence_of :title, :artist, :year_of_release, :genre, :rating

end
