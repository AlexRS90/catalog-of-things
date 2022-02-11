class BookInputs
  def self.book_inputs
    print 'Publisher: '
    book_publisher = gets.chomp.downcase
    print 'Cover State (good/bad): '
    book_cover_state = gets.chomp.downcase
    puts

    [book_publisher, book_cover_state]
  end
end
