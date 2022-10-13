require 'nokogiri'
require 'open-uri'

website = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))

def all_cryptocurrencies(link)
  bourse = []
  link.xpath('//tr/td[2]/div/a[1]').each do |i|
    bourse.push(i.text)
  end
  return bourse
end

def all_price(link)
  price = []
  link.xpath('//tr/td[5]/div/a/span').each do |j|
    price.push(j.text)
  end
  return price
end

def final(link)
  final_crypto = all_cryptocurrencies(link)
  final_value = all_price(link)
  final = final_crypto.zip(final_value).to_h
  return final
end

# .zip=>lie les deux tableaux








# require 'nokogiri'
# require 'open-uri'
#
# def hello
#   website = 'https://coinmarketcap.com/all/views/all/'
#   puts("This program will scrape the data from the site's cryptocurrencies: #{website}")
# end
#
# def all_cryptocurrencies
#   page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
#   puts('Recovery of all Cryptocurrencies')
#   # extrait le symbol de chaque tr
#   crypto_name_array = page.xpath('//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody//tr/td[3]/div')
#   puts('End of Cryptocurrencies recovery')
#   return crypto_name_array
# end
#
# def all_price
#   page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
#   puts('Recovery of all price')
#   # extrait le symbol de chaque tr
#   crypto_price_array = page.xpath('//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody//tr/td[5]/div/a/span')
#   puts('End of price recovery')
#   return crypto_price_array
# end
#
# puts all_price
