module TwelveDays
  def self.song
    song_file = File.expand_path('song.txt', __dir__)
    content = IO.read(song_file)
  end
end