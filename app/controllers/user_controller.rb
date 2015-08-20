get '/' do
erb :'/users/index'
end

get '/users/new' do
erb :'/users/new'
end

post '/users' do
  @user = User.new(
    name: params[:name],
    email: params[:email],
    password: params[:password]
    )
  if @user.save
    set_session_n_redirect_home(@user)
  else
    flash[:message] = "Invalid Sign Up Combination. Try again"
    redirect '/users/new'
  end
end

get '/users/sessions/new' do
  erb :'/users/session'
end

post '/users/sessions' do
  user = User.find_by(email: params[:email])
    if user.email && user.password_hash == params[:password]
      set_session_n_redirect_home(user)
    else
      status 406
      flash[:message] = "Invalid Sign In Combination. Try again"
      redirect to '/sessions/new'
  end
end

get '/users/sessions/logout' do
  session_logout_and_redirect
end

get '/users/calculate' do
  erb :"/users/calculate"
end

post '/users/calculate' do
  drinks = params[:drinks]
  weight = params[:weight]
  time = params[:time]

  # @hours_drank = time * 0.015
  # @volume = weight/2.2 * 0.58
  # @bac = drinks/@volume - @hours_drank

  # multiply(time, 0.015)
  ratio = divide(weight.to_i, 2.2)
  volume = multiply(ratio.to_i, 0.58)
  @bac = divide(drinks.to_i, volume.to_i)
  p @bac
  redirect to '/users/calculate'
end








