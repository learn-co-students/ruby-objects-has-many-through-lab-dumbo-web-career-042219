class Genre

attr_reader :genre_name, :artists, :songs

@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def name
		@name
	end

	def self.all
		@@all
	end

	def songs
	Song.all.select do |song|
	song.genre == self	
	end
end

	def artists
	self.songs.map do |song|
	song.artist
end
end

end