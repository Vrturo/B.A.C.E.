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
    session[:user_id] = @user.id
    redirect "/"
  else
    "Invalid Sign Up Combination. Try again"
    redirect '/users/new'
  end
end

get '/users/sessions/new' do

  erb :'/users/session'
end

post '/users/sessions' do
  user = User.find_by(email: params[:email])
    if user == nil
      status 406
      flash[:sign_in_warning] = "Wrong E mail"
      redirect to '/sessions/new'
    elsif user.password == params[:password]
      session[:user_id] = user.id
      redirect to '/'
    else
      status 406
      redirect to '/sessions/new'
  end
end

get '/users/sessions/logout' do
  session[:user_id] = nil

  redirect '/'
end

