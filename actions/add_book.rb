require './classes/book'
require_relative 'book_inputs'

class AddBook
  def self.add_book(books)
    book_name, book_author, book_genre, book_publisher, book_date, book_cover_state, book_label = BookInputs.book_inputs
    books << Book.new(name: book_name, publisher: book_publisher, cover_state: book_cover_state, genre: book_genre,
                      author: book_author, publish_date: book_date, label: book_label)
    puts
    puts 'Book Created'
  end
end
