# rubocop:disable Metrics/MethodLength
require_relative 'menu'
require_relative 'loader'
require './actions/list_books'
require './actions/music_album'
require './actions/list_musics'
require './actions/add_genre'
require './actions/list_genres'
require './actions/add_item'

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
      GenreList.list_all_genres(genres)
    when '5'
      # list all labels
    when '6'
      # List all author
    when '7'
      AddItem.add_new_item(books, choice)
      File.write('./data/books.json', JSON.dump(books))
    when '8'
      # Add a music album
      # app.albums.push(app.create_music)
      # albums = JSON.parse(app.albums)
      MusicAlbum.create_music(albums)
      File.write('./data/musics.json', JSON.dump(albums))
    when '9'
      # Add a game
    when '10'
      # Add a genre
      # app.genres.push(app.create_genre)
      AddGenre.add_genre(genres)
      File.write('./data/genres.json', JSON.dump(genres))
    when '11'
      state = false
      puts 'Bye Bye'
    end
  end
end

# rubocop:enable Metrics/MethodLength
main
