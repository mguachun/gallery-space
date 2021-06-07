class SessionsController < ApplicationController

    def welcome
    end

    def new 
        @user = User.new
    end

    def destroy 
        session.delete(:user_id)
        redirect_to '/login'
    end

    def create 
        #if they are logging in the "normal" way
        user = User.find_by_email(params[:user][:email])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:message] = "Invalid credentials. Please try again."
            redirect_to '/login'
        end
    end
    def logged_in
          # check that they register successful
          if user.valid? 
            session[:user_id] = user.id   #log them in
            redirect_to user_path(user)
        else
            flash[:message] = "Oops, something went wrong!"
            redirect_to login_path
        end
    end
    
       

 
end
