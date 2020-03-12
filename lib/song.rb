require 'pry'

class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        # binding.pry
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genres_w_song_count= {}
        @@genres.each do |genre|
            genres_w_song_count[genre] ? genres_w_song_count[genre] += 1 : genres_w_song_count[genre] = 1
        end
        # binding.pry
        genres_w_song_count
    end

    def self.artist_count
        artists_w_song_count= {}
        @@artists.each do |artist|
            artists_w_song_count[artist] ? artists_w_song_count[artist] += 1 : artists_w_song_count[artist] = 1
        end
        # binding.pry
        artists_w_song_count
    end
end