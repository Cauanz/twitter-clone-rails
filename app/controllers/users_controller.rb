class UsersController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_user, only: %i[show]



  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :bio, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :nickname, :bio, :avatar])
  end

  #TODO - ADICIONAR MÉTODO QUE ENVIA OS TWEETS DO USER A PÁGINA DELE
  # def index
  #   @tweets = Tweet.all
  # end

  def show
    
  end


  def set_user
    @user = User.find(params[:id])
  end

end
