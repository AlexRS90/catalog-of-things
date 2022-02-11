class Labels
  def self.list_all_labels(games, books, musics)
    puts "You don't have labels yet" if games.empty? && books.empty? && musics.empty?
    puts
    puts "Game's Labels:"
    games.each_with_index do |game, idx|
      puts "#{idx + 1}) #{game['label']['title']}"
    end
    puts
    puts "Book's Labels:"
    books.each_with_index do |book, idx|
      puts "#{idx + 1}) #{book['label']['title']}"
    end
    puts
    puts 'Album Music Labels:'
    musics.each_with_index do |music, idx|
      puts "#{idx + 1}) #{music['label']['title']}"
    end
    puts
  end
end
