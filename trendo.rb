require 'net/http'
require 'uri'


###################################################
#  EDIT YOUR REQUEST HERE                         #
###################################################
# for phrases wirte like that: word = "my+phrase"
word = "New+Year" 
month = 1
year = 2013


def open(url)
  Net::HTTP.get(URI.parse(url))
end

url = "http://www.google.com/trends/fetchComponent?hl=en&q=#{word}&date=#{month}/#{year}+1m&cmpt=q&content=1&cid=TIMESERIES_GRAPH_0&export=5&w=500&h=330"

page_content = open(url)
raw_data_array = page_content.split("rows\":")[1].split("var htmlChart").first
split_raw = raw_data_array.split("],")
split_raw.each do |sr|
  source = sr.split("Date(")[1].split(",")
  date = source[0]+'-'+(source[1].gsub(/\s/,"").to_i+1).to_s+'-'+source[2].gsub(/\s/,"").gsub(/\)\}/,"") #.gsub(/)},/,'')
  num = source[5]
  puts "#{date}, #{num}"
  File.open("result.csv", 'a') {|f| f.puts("#{date}, #{num}\n") }
end    

