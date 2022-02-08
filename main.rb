require_relative 'menu'
require './actions/add_book'
require './actions/list_books'
require_relative 'loader'
require 'json'

def main
  state = true
  books = Loader.json_loader('./data/books.json')

  while state == true
    List.list
    choice = gets.chomp
    case choice
    when '1'
      BookList.list_books(books)
    when '2'
      # List all music albums
    when '3'
      # List all games
    when '4'
      # List all genres
    when '5'
      # list all labels
    when '6'
      # List all author
    when '7'
      AddBook.add_book(books)
      File.write('./data/books.json', JSON.dump(books))
    when '8'
      # Add a music album
    when '9'
      # Add a game
    when '10'
      state = false
      puts 'Bye Bye'
    end
  end
end

main
