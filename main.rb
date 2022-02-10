require_relative 'menu'
require_relative 'loader'
require './actions/list_books'
require './actions/music_album'
require './actions/list_musics'
require './actions/list_genres'
require './actions/add_book'
require './actions/add_games'
require './actions/list_games'

def main
  state = true
  books = Loader.json_loader('./data/books.json')
  albums = Loader.json_loader('./data/musics.json')
  games = Loader.json_loader('./data/games.json')

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
      GameList.list_all_games(games)
    when '4'
      # List all genres
    when '5'
      # list all labels
    when '6'
      # List all author
    when '7'
      AddBook.add_book(books)
      File.write('./data/books.json', JSON.dump(books))
    when '8'
      # Add a music album
      MusicAlbum.create_music(albums)
      File.write('./data/musics.json', JSON.dump(albums))
    when '9'
      # Add a game
      AddGame.add_new_game(games)
      File.write('./data/games.json', JSON.dump(games))
    when '10'
      state = false
    end
  end
end

main
