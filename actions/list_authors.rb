class Author
  def self.list_all_authors(games, books, musics)
    puts "You don't have authors yet" if games.empty? && books.empty? && musics.empty?
    puts
    puts "Game's Authors:"
    games.each_with_index do |game, idx|
      puts "#{idx + 1}) #{game['author']['firstname']} #{game['author']['lastname']}"
    end
    puts
    puts "Book's Authors:"
    books.each_with_index do |book, idx|
      puts "#{idx + 1}) #{book['author']['firstname']} #{book['author']['lastname']}"
    end
    puts
    puts 'Album Music Authors:'
    musics.each_with_index do |music, idx|
      puts "#{idx + 1}) #{music['author']['firstname']} #{music['author']['lastname']}"
    end
    puts
  end
end
