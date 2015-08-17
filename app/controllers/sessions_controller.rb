class SessionsController < ApplicationController
  
  def new
    if current_user
      redirect_to profile_path
    else
      render :new
    end
  end

  def create
    user_params = params.require(:user)
    user = User.find_by_email(user_params[:email])
    
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(user_params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      redirect_to users_path
    else
    # If user's login doesn't work, send them back to the login form.
      flash[:error] = "Failed To Authenticate. Please try again."
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
    flash[:error] = "You have successfully been logged out."
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end

end
