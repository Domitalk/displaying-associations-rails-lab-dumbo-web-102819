class Song < ActiveRecord::Base
  belongs_to :artist


  def artist_name 
    @variable_artist = Artist.find(self.artist_id)
    @variable_artist.name 
  end 

end
