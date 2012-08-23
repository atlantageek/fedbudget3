class HomeController < ApplicationController
  CALLBACK_URI='http://localhost:3000/home/callback/'

  def index
    #Load facebook.yml info
    config = YAML::load(File.open("#{Rails.root}/config/facebook.yml"));
  # setup client

     redirect_to "https://graph.facebook.com/oauth/authorize?client_id=#{config['development']['app_id']}&redirect_uri=#{CALLBACK_URI}"
    # redirect user to facebook
    #redirect_to client.authorization_uri(
      #:scope => [:email, :read_stream, :offline_access]
    #)
  end
  def callback
   
       logger.debug("c")
    config = YAML::load(File.open("#{Rails.root}/config/facebook.yml"));
     if (!params.key?('access_token'))
       logger.debug("A")
       redirect_to "https://graph.facebook.com/oauth/access_token?client_id=#{config['development']['app_id']}&redirect_uri=#{CALLBACK_URI}&client_secret=#{config['development']['client_secret']}&code=#{params['code']}"
       return
     end
       logger.debug("B")
     access_token = params['access_token']
     @me = FbGraph::User.me(ACCESS_TOKEN)
     @name=@me.name
 
     end
end
