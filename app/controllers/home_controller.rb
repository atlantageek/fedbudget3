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
       url_str = "https://graph.facebook.com/oauth/access_token?client_id=#{config['development']['app_id']}&redirect_uri=#{CALLBACK_URI}&client_secret=#{config['development']['client_secret']}&code=#{params['code']}"
       logger.debug url_str
       url=URI.parse(url_str)
       http= Net::HTTP.new(url.host, url.port)
         http.use_ssl = true
         http.verify_mode = OpenSSL::SSL::VERIFY_NONE
       request = Net::HTTP::Get.new(url.request_uri)

       response = http.request(request)
       acc_token=response.body.split('=',2)[1]
        logger.debug(acc_token)
       #access_token = r.to_json['access_token']
       #@name=@me.name
     end
 
     end
end
