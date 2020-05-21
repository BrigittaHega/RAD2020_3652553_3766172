module SessionsHelper

    # from listing 8.14: 
    # Logs in the given user.
    def log_in(user)
        session[:user_id] = user.id
    end

    # from listing 8.16:
    # Returns the current logged-in user (if any).
    def current_user
        if session[:user_id]
            @current_user ||= User.find_by(id: session[:user_id])
        end
    end

    # from listing 8.18--chapter section name:change the layout links:
    # Returns true if the user is logged in, false otherwise.
    def logged_in?
        !current_user.nil?
    end

    # Logs out the current user.
    def log_out
        session.delete(:user_id)
        @current_user = nil
    end
end
