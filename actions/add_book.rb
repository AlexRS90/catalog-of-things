require './classes/book'
require_relative '../inputs/item_inputs'
require_relative '../inputs/book_inputs'
require_relative '../actions/instance_creator'
require 'json'

class AddBook
  def self.add_book(books)
    item_name, item_genre, item_author_first, item_author_last, item_label_title,
    item_label_color, item_date = ItemInputs.item_inputs
    book_publisher, book_cover_state = BookInputs.book_inputs

    genre = InstanceCreator.genre_instance(item_genre)
    author = InstanceCreator.author_instance(item_author_first, item_author_last)
    label = InstanceCreator.label_instance(item_label_title, item_label_color)

    book_instance = Book.new(name: item_name, publisher: book_publisher, cover_state: book_cover_state,
                             genre: genre, author: author, label: label, publish_date: item_date)

    book = { 'json_class' => 'book', 'title' => book_instance.name, 'genre' => book_instance.genre,
             'author' => book_instance.author, 'Cover State' => book_instance.cover_state,
             'label' => book_instance.label, 'publish date' => book_instance.publish_date, 'id' => book_instance.id,
             'archived' => book_instance.archive }
    books << book
    puts 'Book Created'
  end
end
