require_relative 'menu'
require_relative './logic/music_album'

class App
  attr_reader :albums, :genres

  include MusicAlbum
  def initialize
    @albums = []
    @genres = []
  end
end

def main
  state = true
  app = App.new

  while state == true
    List.list

    choice = gets.chomp

    case choice
    when '1'
      # List books
    when '2'
      # List all music albums
      app.list_all_music_albums(app.albums)
    when '3'
      # List all games
    when '4'
      # List all genres
      app.list_all_genres(app.genres)
    when '5'
      # list all labels
    when '6'
      # List all author
    when '7'
      # Add a book
    when '8'
      # Add a music album
      app.albums.push(app.create_music)
    when '9'
      # Add a game
    when '10'
      # Add a genre
      app.genres.push(app.create_genre)
    when '11'
      state = false
      puts 'Bye Bye'
    end
  end
end

main
