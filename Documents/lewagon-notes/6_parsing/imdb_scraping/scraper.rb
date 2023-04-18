require "open-uri"
require "nokogiri"

def scrape_top_urls
  url = "https://www.imdb.com/chart/top"
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML.parse(html_file)
  # all a tags nested in .titleColumn class; use a space for nested elements
  html_doc.search(".titleColumn a").first(5).map do |element|
    "https://www.imdb.com/chart/top" + element.attributes["href"].value
  end
end

def scrape_movie
  url = 'https://www.imdb.com/title/tt0468569/'
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML.parse(html_file)
  html_doc.search(".presentation") #first(5).map do |element|
    # "https://www.imdb.com/chart/top" + element.attributes["href"].value

  # puts html_doc.search('.presentation ')

  # cast = html.doc.search()
  # director =
  # stroyline =
  # title =
  # year =

  # {
  #   cast: cast,
  #   director: director,
  #   stroyline: storyline,
  #   title: title,
  #   year: year
  # }
end

scrape_movie
