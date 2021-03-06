get '/uberoauth' do

  response = HTTParty.post('https://login.uber.com/oauth/token',
    {
      body: {
        client_secret: ENV['UBER_CLIENT_SECRET'],
        client_id: ENV['UBER_CLIENT_ID'],
        code: params[:code],
        grant_type: "authorization_code",
        redirect_uri: "https://bacestimator.herokuapp.com/uberoauth"
      }
    }
  )
  body = JSON.parse(response.body)
  @access_token = body["access_token"]
  HEADER = {
    "Authorization" => "Bearer #{@access_token}"
  }

  @profile = HTTParty.get("https://api.uber.com/v1/me",
                  headers: HEADER,
                  data:{scope: "profile"})

    @user = User.find_or_create_by(email: @profile["email"],
    first_name: @profile["first_name"],
    last_name: @profile["last_name"],
    password_hash:  @profile["uuid"],
    token: @profile["uuid"])

  if @user.save || @user
    @access_token
    session[:access_token] = @access_token
    session[:user_id] = @user.id
    session
    redirect '/'
  else
    @errors = @user.errors.messages
    erb :"users/index"
  end
end

