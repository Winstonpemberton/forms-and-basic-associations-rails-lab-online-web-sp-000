class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :Genre
  has_many :notes
end
