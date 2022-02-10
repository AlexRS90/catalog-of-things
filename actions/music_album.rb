require_relative '../classes/musics'
require_relative '../classes/genre'
require_relative '../classes/item'
require_relative '../inputs/item_inputs'
require_relative '../inputs/album_inputs'

module MusicAlbum
  def self.create_music(album)
    item_name, item_genre, item_author_first, item_author_last, item_label_title,
    item_label_color, item_date = ItemInputs.item_inputs
    on_spotify = AlbumInputs.album_inputs

    music_instance = Music.new(name: item_name, on_spotify: on_spotify, publish_date: item_date, genre: {},
                               author: {}, label: {})

    genre = InstanceCreator.genre_instance(item_genre, music_instance)
    author = InstanceCreator.author_instance(item_author_first, item_author_last, music_instance)
    label = InstanceCreator.label_instance(item_label_title, item_label_color, music_instance)

    music_album = {
      'class' => 'album',
      'id' => music_instance.id,
      'title' => music_instance.name,
      'on_spotify' => music_instance.on_spotify,
      'genre' => genre,
      'author' => author,
      'label' => label,
      'archived' => music_instance.archive
    }
    album << music_album
    puts 'Music album created'
  end
end
