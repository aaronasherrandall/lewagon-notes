require_relative '../scraper.rb'

describe '#scrape_top_urls' do
  it 'return an array with the top 5 URLs' do
    movie_urls = [
      # put top 5 move urls here

    ]
    expect(scrape_top_urls).to eq(movie_urls)
  end
end

describe '#scrape_movie' do
  it "returns a Hsh containing all the movie information" do
  movie_url = "https://www.imdb.com/title/tt0068646/"
  expect(scrape_movie(movie_url)).to_q({

  })
  end
  end
end
