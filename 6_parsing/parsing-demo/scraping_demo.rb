require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com
# Download content of page
ingredient = "chocolate"
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

# Get Content
html_file = URI.open(url).read

# Parse Content
html_doc = Nokogiri::HTML.parse(html_file)

# searches using CSS selector

# if we want to select a class in css, we use a .
# .the_class
# <div class="the_class">
#   Some text
# </div>

# html_doc.search(".standard-card-new__article-title").each do |element|
html_doc.search("h4").first.attributes["class"].value
# Gets Nokogiri::XLM element
# "button-cluster__title heading-4"

# get all titles
# take allows us to only return the amount passed in as an arg
html_doc.search('h2.heading-4').take(10).each do |element|
  puts element.text
end

# Best ever chocolate brownies recipe
# Easy chocolate fudge cake
# Ultimate chocolate cake
# Chocolate fudge crinkle biscuits
# Vintage chocolate chip cookies
# Easy chocolate cake
# Chocolate brownie cake
# Easy chocolate biscuits
# Best chewy chocolate chip cookies
# Easy chocolate chip cookies
# Chocolate & banana cake
# Chocolate cheesecake
# ...
