class BookInputs
  def self.book_inputs
    print 'Name: '
    book_name = gets.chomp
    print 'Author: '
    book_author = gets.chomp
    print 'Genre: '
    book_genre = gets.chomp
    print 'Publisher: '
    book_publisher = gets.chomp
    print 'Published Date: '
    book_date = gets.chomp
    print 'Cover State: '
    book_cover_state = gets.chomp.downcase
    print 'Labels: '
    book_label = gets.chomp.downcase
    [book_name, book_author, book_genre, book_publisher, book_date, book_cover_state, book_label]
  end
end
