class BookList
  def self.list_books(books)
    puts 'Your library is empty' if books.empty?
    books.each_with_index do |book, idx|
      puts "#{idx}) Title: \"#{book.name}\", Author: \"#{book.author}\", Cover State: \"#{book.cover_state}\""
    end
  end
end
