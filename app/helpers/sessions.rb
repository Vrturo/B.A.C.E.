helpers do
  def session_logged_in?
    !session_current_user.nil?
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
end

