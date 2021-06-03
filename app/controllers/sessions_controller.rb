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
        if u && u.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:message] = "Invalid credentials. Please try again."
            redirect_to '/login'
        end
    end
end
