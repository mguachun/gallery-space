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

    def omniauth 
       
        user = User.find_or_create_by(uid: auth["uid"]) do |u|
            u.email = auth["info"]["email"]
            u.password = SecureRandom.hex(15)
        
        end

        if user.valid? 
            session[:user_id] = user.id   
            redirect_to user_path(user)
        else
            flash[:message] = "Oops, something went wrong!"
            redirect_to login_path
        end
    end
    
    def auth
        request.env["omniauth.auth"]
    end


end
