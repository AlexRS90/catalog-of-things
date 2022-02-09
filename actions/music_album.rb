require_relative '../classes/musics'
require_relative '../classes/genre'
require_relative '../classes/item'

module MusicAlbum
  def self.create_music(album)
    music_instance = Music.new(on_spotify: on_spotify, publish_date: published_date, genre: genre, author: author,
                               label: label)
    music_album = {
      'class' => 'Music', 'id' => music_instance.id, 'on_spotify' => music_instance.on_spotify
    }
    album << music_album
    puts 'music album created'
  end
end
