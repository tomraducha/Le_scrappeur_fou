require_relative '../lib/00_dark_trader'

website = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))

describe 'Testing scraping with Crypto Names' do
  it 'Should return not nil if name-crypto is returned' do
    expect(all_cryptocurrencies(website)).to_not(be_nil)
  end
end

describe 'Testing scraping with Crypto Values' do
  it 'Should return not nil if values-crypto is returned' do
    expect(all_price(website)).to_not(be_nil)
  end
end

describe 'Testing final result' do
  it 'Should return not nil if Crypto_compare is working' do
    expect(final(website)).to_not(be_nil)
  end
end
