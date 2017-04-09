class LoginController < ApplicationController
  #skip_before_action :user_session_required, only: [:validate]

  def loginask
    user_id = session[:user_id]
    if !user_id.nil? && User.exists?(user_id)
      redirect_to user_path(user_id)
    end
  end

  def validate
    mail = params[:mail]
    password = params[:password]
    user, @error = User.login(mail, password)
    if @error
      render 'loginask'
    else
      session[:user_id] = user.id
      redirect_to root_path
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

end
