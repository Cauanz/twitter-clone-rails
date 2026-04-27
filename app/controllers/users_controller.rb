class UsersController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_user, only: %i[show edit update]


  def show
    @tweets = @user.tweets.all
  end


  def edit
    
  end

  def update
    if @user.update(validate_user)
      redirect_to user_path(current_user)
    else
      render user_path(current_user)
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :bio, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :nickname, :bio, :avatar])
  end
  
  def set_user
    @user = User.find(params[:id])
  end

  def validate_user
    params.require(:user).permit(:username, :nickname, :avatar, :bio)
  end
end
