class ApplicationController < ActionController::Base
    include ApplicationHelper 
    private 
    def logged_in?
        !!session[:user_id]
    end

    def current_user
        User.find_by_id(session[:user_id])
    end

    def find_user
        @user = User.find_by_email(params[:email])
    end

    def redirect_if_logged_in
        if logged_in?
            redirect "/"
        end
    end

    def redirect_if_not_logged_in
        unless logged_in?
            redirect "/login"
        end
    end
    

end





