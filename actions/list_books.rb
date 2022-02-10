class BookList
  def self.list_books(books)
    puts 'Your library is empty' if books.empty?
    books.each_with_index do |book, idx|
      # rubocop:disable Layout/LineLength
      puts "#{idx}) Title: \"#{book['title']}\", Author: \"#{book['author']['firstname']} #{book['author']['lastname']}\", Cover State: \"#{book['Cover State']}\""
      # rubocop:enable Layout/LineLength
    end
  end
end
