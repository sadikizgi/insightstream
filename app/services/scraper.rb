class Scraper
    require 'nokogiri'
    require 'open-uri'
  
    # Scrape data from a given URL
    def self.scrape_data(url)
      html = URI.open(url)
      doc = Nokogiri::HTML(html)
  
      doc.css('.item').each do |item|
        puts "Title: #{item.css('.title').text}"
        puts "Description: #{item.css('.description').text}"
        puts "Price: #{item.css('.price').text}"
      end
    end
  end