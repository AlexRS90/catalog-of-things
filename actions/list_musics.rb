class MusicList
  def self.list_music_albums(musics)
    puts 'Your musics is empty' if musics.empty?
    musics.each do |music|
      puts "Id: #{music['id']}), class: #{music['json_class']}, On Spotify: #{music['on_spotify']}"
    end
  end
end
