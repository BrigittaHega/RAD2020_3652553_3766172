module SessionsHelper

    # from listing 8.14: 
    # Logs in the given user.
    def log_in(user)
        session[:user_id] = user.id
    end

    # from listing 9.8:
    # Remembers a user in a persistent session.
    def remember(user)
        user.remember
        cookies.permanent.signed[:user_id] = user.id
        cookies.permanent[:remember_token] = user.remember_token

        # cookies[:remember_token] = { value: remember_token, expires: 20.years.from_now.utc }
    end

    # from listing 8.16:
    # # Returns the current logged-in user (if any).
    # def current_user
    #     if session[:user_id]
    #         @current_user ||= User.find_by(id: session[:user_id])
    #     end
    # end

    # #above code--changed to listing 9.9:
    # Returns the user corresponding to the remember token cookie.
    def current_user
        if (user_id = session[:user_id])
            @current_user ||= User.find_by(id: user_id)
        elsif (user_id = cookies.signed[:user_id])
            # raise       # The tests still pass, so this branch is currently untested.
            user = User.find_by(id: user_id)
            if user && user.authenticated?(cookies[:remember_token])
                log_in user
                @current_user = user
            end
        end
    end


    ## from listing 8.18--chapter section name:change the layout links:
    # Returns true if the user is logged in, false otherwise.
    def logged_in?
        !current_user.nil?
    end

    # Forgets a persistent session.
    def forget(user)
        user.forget
        cookies.delete(:user_id)
        cookies.delete(:remember_token)
    end

    # Logs out the current user.
    def log_out
        forget(current_user)
        session.delete(:user_id)
        @current_user = nil
    end
end
