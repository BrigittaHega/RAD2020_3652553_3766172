class StaticPagesController < ApplicationController
# <<<<<<< HEAD
  def forum
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end




# Dawanamo's tutorial code:

# =======
#   def home
#   end

#   def help
#   end

#   def about
#   end

#   def contact
#   end
# >>>>>>> 643e381bb3f0898e7a036c2cf7cea9e08c8bac6e
  
end
