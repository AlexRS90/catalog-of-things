class MusicList
  def self.list_all_music_albums(musics)
    musics.each do |music|
      puts "ID: #{music.id}, On Spotify: #{music.on_spotify}"
    end
  end
end