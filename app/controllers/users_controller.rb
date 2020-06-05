class UsersController < ApplicationController
# <<<<<<< HEAD
#   def new
#   end
# =======






# Dawanamo's tutorial code:

  
  def show
    @user = User.find(params[:id])
    # binding.pry
    # debugger
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
      log_in @user
      flash[:success] = "Welcome to the Tute 6!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
# >>>>>>> 643e381bb3f0898e7a036c2cf7cea9e08c8bac6e
end
