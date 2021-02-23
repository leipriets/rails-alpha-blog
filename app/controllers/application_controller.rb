class ApplicationController < ActionController::Base
    def home

    end

    #call this is controller method as a helper methods too or in application_helper.rb
    helper_method :current_user, :logged_in?
    def current_user
        # ||= Check if has current user before querying to database - (memoization)
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        #convert to boolean
        !!current_user
    end
end
