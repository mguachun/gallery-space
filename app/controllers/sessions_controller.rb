class SessionsController < ApplicationController


    def new 
        @user = User.new
    end

    def destroy 
        session.delete(:user_id)
        redirect_to '/login'
    end

    def create 
    
        user = User.find_by_email(params[:user][:email])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:message] = "Invalid credentials. Please try again."
            redirect_to '/login'
        end
    end


       

 
end
