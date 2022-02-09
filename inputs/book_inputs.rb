class BookInputs
  def self.book_inputs
    print 'Publisher: '
    book_publisher = gets.chomp
    print 'Cover State: '
    book_cover_state = gets.chomp.downcase

    [book_publisher, book_cover_state]
  end
end
