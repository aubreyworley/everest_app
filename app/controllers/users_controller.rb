class UsersController < ApplicationController
  
  before_filter :authorize, only: [:show]

  def index
  end

  def new
    if current_user
      redirect_to profile_path
    else
      @user = User.new
      render :new
    end
  end

  def create
    if current_user
      redirect_to profile_path
    else
      user = User.new(user_params)
      if user.save
        session[:user_id] = user.id
        redirect_to profile_path
      else
        redirect_to signup_path
      end
    end
  end

  def show
    @user = User.find(session[:user_id])
    render :show
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    user = User.find(session[:user_id])
    if current_user = user
      form_params = params.require(:user).permit(:first_name, :last_name, :user_name, :email, :about)
      user.update_attributes(form_params)
      redirect_to profile_path
    else
      redirect_to '/'
    end
  end

  private 
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
