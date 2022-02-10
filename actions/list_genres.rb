class GenreList
  def self.list_all_genres(games, books, musics)
    puts 'Your genres is empty' if games.empty? && books.empty? && musics.empty?
    puts
    puts "Game's genres:"
    games.each_with_index do |game, idx|
      puts "#{idx + 1}) #{game['genre']['name']}"
    end
    puts
    puts "Book's genres:"
    books.each_with_index do |book, idx|
      puts "#{idx + 1}) #{book['genre']['name']}"
    end
    puts
    puts 'Album genres:'
    musics.each_with_index do |music, idx|
      puts "#{idx + 1}) #{music['genre']['name']}"
    end
    puts ''
  end
end
