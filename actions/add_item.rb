require './classes/book'
require_relative 'item_inputs'
require_relative 'book_inputs'
require_relative 'album_inputs'
require_relative 'instance_creator'
require 'json'

class AddItem
  def self.add_new_item(store, choice)
    case choice
    when '7'
      item_name, item_genre, item_author_first, item_author_last, item_label_title,
      item_label_color, item_date = ItemInputs.item_inputs
      book_publisher, book_cover_state = BookInputs.book_inputs

      genre = InstanceCreator.genre_instance(item_name, item_genre)
      author = InstanceCreator.author_instance(item_author_first, item_author_last)
      label = InstanceCreator.label_instance(item_label_title, item_label_color)

      book_instance = Book.new(publisher: book_publisher, cover_state: book_cover_state,
                               genre: genre, author: author, label: label, publish_date: item_date)

      book = { 'json_class' => 'book', 'genre' => book_instance.genre,
               'author' => book_instance.author, 'Cover State' => book_instance.cover_state,
               'label' => book_instance.label, 'publish date' => book_instance.publish_date, 'id' => book_instance.id,
               'archived' => book_instance.archive }
      store << book
      puts 'Book Created'
      when '8'
        item_name, item_genre, item_author_first, item_author_last, item_label_title,
        item_label_color, item_date = ItemInputs.item_inputs
        on_spotify = AlbumInputs.album_inputs
        
    end
  end
end
