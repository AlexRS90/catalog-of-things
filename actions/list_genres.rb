class GenreList
  def self.list_all_genres(genres)
    puts 'Your genres is empty' if genres.empty?
    genres.each_with_index do |genre, idx|
      puts "#{idx}) class: #{genre['class']}, Name: #{genre['name']}"
    end
  end
end
