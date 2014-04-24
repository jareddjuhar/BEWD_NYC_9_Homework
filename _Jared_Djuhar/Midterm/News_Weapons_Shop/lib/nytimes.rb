require 'rest-client'
require 'json'

class Nytimes
    attr_reader :endpoint_url

    BASE_URL = 'http://api.nytimes.com'
    API_KEY = '0f6c70a8ab4fe131b290ce250725c767%3A15%3A56992301'

    def initialize(newstopic)
        @endpoint_url = "#{BASE_URL}/svc/search/v2/articlesearch.json?q=#{newstopic}&sort=newest&api-key=#{API_KEY}"
    end

    def get
        response = RestClient.get(endpoint_url)
        @parsed_response = JSON.parse(response)
    end

    def parsed_response
        @parsed_response["response"]["docs"].map do |post|
            post["snippet"]    
            end
    end
end



# Trial code
    # def parsed_response
    # @parsed_response["response"]["docs"].map do |post|
    #     { title: post["headline"]["main"], 
    #     snippet: post["snippet"]
    #     url: post["web_url"] }
    #   end
    # end

# http://api.nytimes.com/svc/search/v2/articlesearch.json?q=Ukraine&sort=newest&api-key=0f6c70a8ab4fe131b290ce250725c767%3A15%3A56992301