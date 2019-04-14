class AsciiArtist::Art 

    attr_accessor :art_text, :index
    @@all = []

    def initialize(art, index)
        @art_text = art
        @index = index
        @@all << self
        puts "SUCCESS!!!"
    end

    def self.all
        @@all
    end

end
