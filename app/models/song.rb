class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :Genre
  has_many :notes

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def category_name
    self.artist ? self.artist.name : nil
  end
end
