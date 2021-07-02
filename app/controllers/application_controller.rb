class ApplicationController < ActionController::Base
   
    helper_method :current_user, :check_login?

    private 
    def check_login?
        !!session[:user_id]
    end

    def redirect_if_logged_in
        redirect_to user_path(current_user) if check_login?
    end

    def redirect_if_not_logged_in
       unless current_user
        redirect_to "/"
       end
       
    end

    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def find_user
        @user = User.find_by_email(params[:email])
    end

    def logged_in(user)
        # check that they register successfully
        if user.valid?
          session[:user_id] = user.id   #log them in
          redirect_to user_path(user)
      else
          flash[:message] = "Oops, something went wrong!"
          redirect_to login_path
      end
  end
  

    def redirect_if_logged_in
        redirect_to user_path(current_user) if check_login?
    end

    def redirect_if_not_logged_in
        redirect_to root_path if check_login?
    end

   
end





