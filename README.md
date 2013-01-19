# Unofficial Google Trends API
I was inspired by Sal Uryasev, who wrote the first unofficial Google Trends API and made it public. That's my fork of his repo: https://github.com/mac-r/unofficial-google-trends-api. The problem is that his code doesn't work anymore. I didn't like the idea of creating a new session as well.

My script allows to get daily data per specified month without any authorization. 

## Here how it works

Clone the repository within the following command,
```
$ git clone git@github.com:mac-r/trendo.git
```

Open the editor and specify your request.
```ruby
###################################################
#  EDIT YOUR REQUEST HERE                         #
###################################################
# for phrases wirte like that: word = "my+phrase"
word = "New+Year" 
month = 1
year = 2013
```

Run the script in the terminal.
```
$ ruby trendo.rb
```

Use the ```result.csv``` according to your needs.

## Troubleshooting
If you make too many requests - then you'll get banned by Googlers. So be careful.

## Requirements
It works well with Ruby 1.9.3