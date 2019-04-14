class AsciiArtist::CLI

    def welcome()
        puts "\n\n\n\n\n\n\n\n\n\n\n\n
        
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
                \n\nFor the best results, maximize your terminal window.
        "
        sleep 2
        start
    end

    def start

        #Scrape and serve top level categories.
        level_1_category_choice_url = get_categories('https://www.asciiart.eu/')

        #Scrape and serve sub-level categories.
        level_2_category_choice_url = get_categories(level_1_category_choice_url)

        #Create art objects.
        art_doc = fetch_page(level_2_category_choice_url)
        parse_art(art_doc)
        show_art

        #Clear Objects and Restart
        clear_art
        start

    end

    def get_categories(url)
        doc = fetch_page(url)
        categories = parse_categories(doc)
        print_and_select_categories(categories)
        puts "Please select a category by number:"
        category_selection = gets.to_i
        sub_doc = categories[category_selection][:url]
        sub_doc
    end

    def print_and_select_categories(categories)
        puts "Please select a category."
        puts "|==================================================|"
        categories.each.with_index { |cat, index| 
            puts "\t#{index}) \t" + cat[:title]
        }
        puts "|==================================================|"
    end

    def parse_art(art_doc)
        art_doc.css('body > div.d-flex > div > div.workarea.p-2.px-sm-4.pb-sm-4 > div.asciiarts.mt-3 > div > pre').each.with_index { |x, index|
            create_art(x.text, index)

        }
    end
        
    def create_art(art, index)
        AsciiArtist::Art.new(art, index)
    end

    def clear_art
        AsciiArtist::Art.clear
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

    def show_art

        puts "Press Enter Key to cycle through gallery, or type 'quit' to return to main menu. "

        AsciiArtist::Art.all.each { |x|
        
            action = gets.chomp

            if action == "quit" 
                break
            else
                puts "|--                                                              --|\n\n"
                puts x.art_text
                puts "\n\n|--                                                              --|"
            end

        }

        puts "End of gallery, returning to main menu."
        sleep 2
    end

    def fetch_page(url)
        AsciiArtist::Scraper.new.get_categories(url)
    end

end