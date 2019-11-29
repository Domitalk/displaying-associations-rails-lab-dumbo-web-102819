class Artist < ActiveRecord::Base
    has_many :songs



    def song_count
        @artist_songs = Song.all.select do |instance|
            instance.artist == self 
        end 
        @artist_songs.length 
    end 
end
