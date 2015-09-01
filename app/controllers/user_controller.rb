get '/' do
  if session[:user_id]
    @user = User.find(session[:user_id])
  end
erb :'users/index'
end

get '/users/new' do
  if request.xhr?
    erb :'users/_new_user_form',  {layout: false}
  else
    erb :'users/new'
  end
end

post '/users' do
  @user = User.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    password: params[:password]
    )
  if @user.save
    set_session_n_redirect_home(@user)
  else
    flash[:message] = "Invalid Sign Up Combination. Try again"
    erb :'users/new'
  end
end

get '/users/sessions/new' do
  if request.xhr?
    erb :'users/_new_session_form',  {layout: false}
  else
    erb :'users/session'
  end
end

post '/users/sessions' do
  @user = User.find_by(email: params[:email])
    if @user.email && @user.password == params[:password]
      set_session_n_redirect_home(@user)
    else
      status 406
      flash[:message] = "Invalid Sign In Combination. Try again"
      erb :'users/new'
  end
end

get '/users/sessions/logout' do
  session_logout_and_redirect
end
