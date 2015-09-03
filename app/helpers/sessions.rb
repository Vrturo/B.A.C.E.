helpers do
  def session?
    !session[:user_id].nil?
  end

  def set_session(user)
    session[:user_id] = user.id
  end

  def set_session_n_redirect_home(user)
    session[:user_id] = user.id
    redirect "/"
  end

  def session_logout_and_redirect
    session.destroy
    redirect '/'
  end
  def current_user
    @user || @user = User.find(session[:user_id])
  end

  def set_session(user)
    session[:user_id] = user.id
  end

end

