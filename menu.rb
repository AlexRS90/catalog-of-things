class List
  @options = ['List all books', 'List all music albums', 'List all games', 'List all genres', 'List all labels',
              'List all authors', 'Add a book', 'Add a music album', 'Add a game', 'Exit']

  def self.list
    @options.each_with_index do |el, idx|
      puts "#{idx + 1}) #{el}"
    end
  end
end
