require './classes/book'
require './inputs/item_inputs'
require './inputs/book_inputs'
require './actions/instance_creator'
require 'json'

class AddBook
  def self.add_book(books)
    item_name, item_genre, item_author_first, item_author_last, item_label_title,
    item_label_color, item_date = ItemInputs.item_inputs
    book_publisher, book_cover_state = BookInputs.book_inputs

    book_instance = Book.new(name: item_name, publisher: book_publisher, cover_state: book_cover_state,
                             genre: {}, author: {}, label: {}, publish_date: item_date)

    genre = InstanceCreator.genre_instance(item_genre, book_instance)
    author = InstanceCreator.author_instance(item_author_first, item_author_last, book_instance)
    label = InstanceCreator.label_instance(item_label_title, item_label_color, book_instance)

    book = { 'json_class' => 'book', 'title' => book_instance.name, 'genre' => genre,
             'author' => author, 'Cover State' => book_instance.cover_state,
             'label' => label, 'publisher' => book_instance.publisher, 'publish date' => book_instance.publish_date,
             'id' => book_instance.id, 'archived' => book_instance.archive }
    books << book
    puts 'Book Created'
  end
end
