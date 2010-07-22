module TicketMaster::Provider
  # This is the Github Provider for ticketmaster
  module Github
    include TicketMaster::Provider::Base
    
    # This is for cases when you want to instantiate using TicketMaster::Provider::Github.new(auth)
    def self.new(auth = {})
      TicketMaster.new(:github, auth)
    end
    
    # declare needed overloaded methods here
    def authorize(auth = {})
      @authentication ||= TicketMaster::Authenticator.new(auth)
      auth = @authentication
      if auth.token.nil? and auth.login.nil?
        raise "Please provide token and login"
      end
      
      GithubApi.token = auth.token
      GithubApi.authenticate(auth.login)
      puts 'hi'
    end
    
  end
end


