require './classes/book'
require './classes/label'
require_relative 'book_inputs'
require 'json'

class AddBook
  def self.add_book(books)
    book_name, book_author, book_genre, book_publisher, book_date, book_cover_state,
    label_title, label_color = BookInputs.book_inputs

    label_instance = Label.new(title: label_title, color: label_color)

    label = { 'json_class' => 'label', 'title' => label_instance.title, 'color' => label_instance.color }

    book_instance = Book.new(name: book_name, publisher: book_publisher, cover_state: book_cover_state,
                             genre: book_genre, author: book_author, publish_date: book_date, label: label_instance)

    book = { 'json_class' => 'book', 'title' => book_instance.name, 'genre' => book_instance.genre,
             'author' => book_instance.author, 'Cover State' => book_instance.cover_state,
             'label' => label, 'id' => book_instance.id }
    books << book
    puts
    puts 'Book Created'
  end
end
