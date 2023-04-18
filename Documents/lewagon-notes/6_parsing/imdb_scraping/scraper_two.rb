require 'open-uri'
require 'nokogiri'

url = 'https://www.imdb.com/title/tt0468569/'
html_content = URI.open(url, 'Accept-Language' => 'en', "User-Agent" => "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0").readdoc = Nokogiri::HTML(html_content)

p doc.search('ipc-link.ipc-link--baseAlt').text.strip do |element|
  p element.split #.attributes["href"].value
end

# OR (if you need to iterate over multiple elements)

# doc.search('.REPLACE_ME').each do |element|
  # p element.text.strip
# end
