require_relative 'menu'
require_relative 'loader'
require_relative 'create_json'
require './actions/list_books'
require './actions/music_album'
require './actions/list_musics'
require './actions/list_genres'
require './actions/add_book'
require './actions/add_games'
require './actions/list_games'
require './actions/list_authors'
require './actions/list_labels'

def menu(books, albums, games, state: true)
  while state == true
    List.list
    choice = gets.chomp
    case choice
    when '1'
      BookList.list_books(books)
    when '2'
      MusicList.list_music_albums(albums)
    when '3'
      GameList.list_all_games(games)
    when '4'
      GenreList.list_all_genres(games, books, albums)
    when '5'
      Labels.list_all_labels(games, books, albums)
    when '6'
      Author.list_all_authors(games, books, albums)
    when '7'
      AddBook.add_book(books)
      File.write('./data/books.json', JSON.dump(books))
    when '8'
      MusicAlbum.create_music(albums)
      File.write('./data/musics.json', JSON.dump(albums))
    when '9'
      AddGame.add_new_game(games)
      File.write('./data/games.json', JSON.dump(games))
    when '10'
      state = false
    else
      puts 'Invalid input, try again'
    end
  end
end

def main
  CreateFiles.book_file
  CreateFiles.album_file
  CreateFiles.game_file
  books = Loader.json_loader('./data/books.json')
  albums = Loader.json_loader('./data/musics.json')
  games = Loader.json_loader('./data/games.json')
  menu(books, albums, games)
end

main
