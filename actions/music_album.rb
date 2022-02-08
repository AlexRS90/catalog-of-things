require_relative '../classes/musics'
require_relative '../classes/genre'
require_relative '../classes/item'

module MusicAlbum
  def list_all_music_albums(musics)
    musics.each do |music|
      puts "ID: #{music.id}, On Spotify: #{music.on_spotify}"
    end
  end

  def list_all_genres(genres)
    genres.each do |genre|
      puts "ID: #{genre.id}, Genre: #{genre.name}"
    end
    puts ''
  end

  def create_music
    on_spotify = nil
    while on_spotify != 'y' && on_spotify != 'n'
      print 'On Spotify? [y/n]: '
      on_spotify = gets.chomp
      case on_spotify
      when 'y'
        true
      when 'n'
        false
      else
        puts 'invalid input'
      end
    end
    print 'Published Date: '
    published_date = gets.chomp
    print 'Published Genre: '
    genre = gets.chomp
    print 'Published Author: '
    author = gets.chomp
    print 'Published Label: '
    label = gets.chomp
    Music.new(on_spotify: on_spotify, publish_date: published_date, genre: genre, author: author, label: label)
  end

  def create_genre
    print 'Name: '
    genre = gets.chomp
    Genre.new(genre)
  end
end
