module SessionsHelper
  def current_user
<<<<<<< HEAD
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user.present?
  end

  def require_login
    redirect_to new_session_path, notice: 'ログインしてください' unless logged_in?
  end
=======
   @current_user ||= User.find_by(id: session[:user_id])
 end

 def logged_in?
   current_user.present?
 end

 def require_login
   redirect_to new_session_path, notice: 'ログインしてください' unless logged_in?
 end
>>>>>>> 3bbcd2869510d89227b1ebea83385ca5010afaae
end
