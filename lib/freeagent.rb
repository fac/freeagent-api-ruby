module FreeAgent
  require_relative 'freeagent/client'
  require_relative 'freeagent/errors'  

  require_relative 'freeagent/resource'
  require_relative 'freeagent/user'

  class << self
    attr_accessor :environment
    attr_accessor :debug
    attr_reader :client
    
    def access_details(client_id, client_secret, access_token=nil)
      @client = Client.new(client_id, client_secret)
      @client.access_token = access_token if access_token
    end
  end
end
