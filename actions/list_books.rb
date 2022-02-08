class BookList
  def self.list_books(books)
    puts 'Your library is empty' if books.empty?
    books.each_with_index do |book, idx|
      puts "#{idx}) Title: \"#{book['title']}\", Author: \"#{book['author']}\", Cover State: \"#{book['Cover State']}\""
    end
  end
end
