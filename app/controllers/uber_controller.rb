  require 'debugger'
  require 'JSON'
  HEADER = {
    'User-Agent' => "Awesome-Octocat-App",
    "Authorization" => "token #{ENV['UBER_CLIENT_ID']}"
  }

get '/uberoauth' do

  response = HTTParty.post('https://login.uber.com/oauth/token',
    {
      body: {
        client_secret: ENV['UBER_CLIENT_SECRET'],
        client_id: ENV['UBER_CLIENT_ID'],
        code: params[:code],
        grant_type: "authorization_code",
        redirect_uri: "http://localhost:9393/uberoauth"
      }
    }
  )
  body = JSON.parse(response.body)
  @access_token = body["access_token"]

  session[:user_id] = @access_token
  redirect '/'

end
