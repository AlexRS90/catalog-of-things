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
    book_date = gets.chomp.to_i
    print 'Cover State: '
    book_cover_state = gets.chomp.downcase
    print 'Label Title: '
    label_title = gets.chomp.downcase
    print 'Label Color:'
    label_color = gets.chomp.downcase
    [book_name, book_author, book_genre, book_publisher, book_date, book_cover_state, label_title, label_color]
  end
end
