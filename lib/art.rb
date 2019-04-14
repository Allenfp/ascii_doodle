class AsciiArtist::Art 

    attr_accessor :art_text, :index
    @@all = []
    @@favorites = []

    def initialize(art, index)
        @art_text = art
        @index = index
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all = []        
    end

    def add_to_favorites
        @@favorites << self
    end

end
