class ApplicationController < ActionController::Base
    include SessionsHelper

    # Confirms a logged-in user.
    def logged_in_user
        unless logged_in?
          flash[:danger] = "Please enter right credentials. or Sign Up"
          redirect_to login_url
        end
    end

end
