class AsciiArtist::Scraper

    def get_categories(url)
        Nokogiri::HTML(open(url))
    end

end