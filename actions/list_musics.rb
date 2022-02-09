class MusicList
  def self.list_music_albums(musics)
    puts 'Your musics is empty' if musics.empty?
    musics.each do |music|
      puts "Id: #{music['id']}),
            class: #{music['class']},
            On Spotify: #{music['on_spotify']},
            Genre: #{music['genre']['name']}}"
    end
  end
end
