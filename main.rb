require 'json'
require_relative 'loader'
require_relative 'menu'
require './actions/add_book'
require './actions/list_books'
require './actions/music_album'
require './actions/list_musics'

def main
  state = true
  books = Loader.json_loader('./data/books.json')
  albums = Loader.json_loader('./data/musics.json')
  genres = Loader.json_loader('./data/genres.json')

  while state == true
    List.list
    choice = gets.chomp
    case choice
    when '1'
      BookList.list_books(books)
    when '2'
      # List all music albums
      MusicList.list_music_albums(albums)
    when '3'
      # List all games
    when '4'
      # List all genres
      GenreList.list_genres(genres)
    when '5'
      # list all labels
    when '6'
      # List all author
    when '7'
      AddBook.add_book(books)
      File.write('./data/books.json', JSON.dump(books))
    when '8'
      # Add a music album
      File.write('./data/musics.json', JSON.dump(musics))
    when '9'
      # Add a game
    when '10'
      # Add a genre
      File.write('./data/genres.json', JSON.dump(genres))
    when '11'
      state = false
      puts 'Bye Bye'
    end
  end
end

main
