class GenreList
  def self.list_all_genres(genres)
    genres.each do |genre|
      puts "ID: #{genre.id}, Genre: #{genre.name}"
    end
    puts ''
  end
end