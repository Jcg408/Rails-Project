class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :current_user, :logged_in?

    # def current_user
    #     @current_user ||= Client.find(session[:user_id]) if session[:user_id]
    # end

    # def logged_in? 
    #     current_user != nil
    # end
end
