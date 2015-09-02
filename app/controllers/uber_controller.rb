  require 'debugger'
  require 'JSON'


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
  HEADER = {
    "Authorization" => "Bearer #{@access_token}"
  }

  p @profile = HTTParty.get("https://api.uber.com/v1/me",
                  headers: HEADER,
                  data:{scope: "profile"})

  p @user = User.where(email: @profile["email"]).first_or_create do |user|
    user.first_name = @profile["first_name"],
    user.last_name = @profile["last_name"],
    user.email = @profile["email"],
    user.password_hash = @profile["uuid"],
    user.token = @profile["uuid"]
    end

    # p @user = User.create(
    #   first_name: @profile["first_name"],
    #   last_name: @profile["last_name"],
    #   email: @profile["email"],
    #   password_hash: @profile["uuid"],
    #   token: @profile["uuid"])


  if @user || @user.save
    set_session(@user)
    redirect '/'
  else
    p @errors = @user.errors.messages
    erb :"users/index"
  end
end

