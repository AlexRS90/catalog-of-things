require './classes/book'
require_relative 'book_inputs'

class AddBook
  def self.add_book(books)
    book_name, book_author, book_genre, book_publisher, book_date, book_cover_state, book_label = BookInputs.book_inputs
    book_instance = Book.new(name: book_name, publisher: book_publisher, cover_state: book_cover_state,
                             genre: book_genre, author: book_author, publish_date: book_date, label: book_label)
    book = { 'json_class' => 'book', 'title' => book_instance.name, 'author' => book_instance.author,
             'Cover State' => book_instance.cover_state, 'id' => book_instance.id }
    books << book
    puts
    puts 'Book Created'
  end
end
