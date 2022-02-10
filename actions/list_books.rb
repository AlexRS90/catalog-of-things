class BookList
  def self.list_books(books)
    puts
    puts 'Your library is empty' if books.empty?
    books.each_with_index do |book, idx|
      print "#{idx}) Title: \"#{book['title']}\", Author: \"#{book['author']['firstname']}"
      print " #{book['author']['lastname']}\", Cover State: \"#{book['Cover State']}\""
      puts
    end
    puts
  end
end
