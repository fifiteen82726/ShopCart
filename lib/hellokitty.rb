require 'open-uri'


class HelloKitty
	def self.say
		url = 'https://translate.google.com.tw/'
		html = open(url).read 
		match = html.match(/<title>([^<]*)<\/title>/)

	 
	 return  match[1]
    end

end
