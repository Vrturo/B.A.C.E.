get '/' do.
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

