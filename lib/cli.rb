class AsciiArtist::CLI

    def welcome()
        puts '
        
        Welcome to...

             ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄              
            ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌             
            ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀  ▀▀▀▀█░█▀▀▀▀  ▀▀▀▀█░█▀▀▀▀              
            ▐░▌       ▐░▌▐░▌          ▐░▌               ▐░▌          ▐░▌                  
            ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░▌               ▐░▌          ▐░▌                  
            ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌               ▐░▌          ▐░▌                  
            ▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀▀▀▀▀▀█░▌▐░▌               ▐░▌          ▐░▌                  
            ▐░▌       ▐░▌          ▐░▌▐░▌               ▐░▌          ▐░▌                  
            ▐░▌       ▐░▌ ▄▄▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄  ▄▄▄▄█░█▄▄▄▄  ▄▄▄▄█░█▄▄▄▄              
            ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌             
             ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀              
         ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄ 
        ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
        ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀█░█▀▀▀▀  ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀  ▀▀▀▀█░█▀▀▀▀ 
        ▐░▌       ▐░▌▐░▌       ▐░▌     ▐░▌          ▐░▌     ▐░▌               ▐░▌     
        ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌     ▐░▌          ▐░▌     ▐░█▄▄▄▄▄▄▄▄▄      ▐░▌     
        ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░▌          ▐░▌     ▐░░░░░░░░░░░▌     ▐░▌     
        ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀█░█▀▀      ▐░▌          ▐░▌      ▀▀▀▀▀▀▀▀▀█░▌     ▐░▌     
        ▐░▌       ▐░▌▐░▌     ▐░▌       ▐░▌          ▐░▌               ▐░▌     ▐░▌     
        ▐░▌       ▐░▌▐░▌      ▐░▌      ▐░▌      ▄▄▄▄█░█▄▄▄▄  ▄▄▄▄▄▄▄▄▄█░▌     ▐░▌     
        ▐░▌       ▐░▌▐░▌       ▐░▌     ▐░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░▌     
         ▀         ▀  ▀         ▀       ▀       ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀       ▀      
                          
         
                ... A CLI web scraping project that reads from www.asciiart.eu !!
        '
        sleep 2
        start
    end

    def start

        #Select a top level category.
        doc = fetch_page('https://www.asciiart.eu/')
        categories = parse_categories(doc)
        print_and_select_categories(categories)
        puts "Please select a category by number:"
        category_selection = gets.to_i

        #Select a subcategory.
        sub_doc = fetch_page(categories[category_selection][:url])
        subcategories = parse_categories(sub_doc)
        print_and_select_categories(subcategories)
        puts "Please select a subcategory by number:"
        subcategory_selection = gets.strip.to_i

        #Create art objects.
        art_doc = fetch_page(subcategories[subcategory_selection][:url])
        parse_art(art_doc)
        binding.pry

    end

    def print_and_select_categories(categories)
        puts "Please select a category."
        puts "|--------------------------------------------------|"
        categories.each.with_index { |cat, index| 
            puts "\t#{index}) \t" + cat[:title]
        }
        puts "|--------------------------------------------------|"
    end

    def parse_art(art_doc)
        art_doc.css('body > div.d-flex > div > div.workarea.p-2.px-sm-4.pb-sm-4 > div.asciiarts.mt-3 > div > pre').each.with_index { |x, index|
            create_art(x.text, index)

        }
    end
        
    def create_art(art, index)
        AsciiArtist::Art.new(art, index)
    end

    def parse_categories(doc)
        categories = []
            doc.css('#directory > div > ul > li').each { |x|
                begin    
                    categories << {
                        title: x.children.text,
                        url: "https://www.asciiart.eu" + x.children.attr('href').value
                    }
                rescue
                    next
                end
            }
        categories
    end


    def fetch_page(url)
        AsciiArtist::Scraper.new.get_categories(url)
    end

end