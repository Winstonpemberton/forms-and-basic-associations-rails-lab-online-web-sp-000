class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def note_contents=(contents)
    contents.each do |content|
      self.notes = Notes.find_or_create_by(content: content)
    end
  end

  def note_contents
    contents = []
    self.notes.each do |note|
      contents << note.content
    end
    contents
  end


end
