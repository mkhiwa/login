class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        #if cookies[:user_id]
        #User.find(cookies.encrypted.signed[:user_id])
        if session[:user_id]
        User.find(session[:user_id])
        end
    end
end
