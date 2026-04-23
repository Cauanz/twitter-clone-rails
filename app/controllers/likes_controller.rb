class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    # TODO - TALVEZ ADICIONAR VERIFICAÇÃO E PERMITIR SÓ UM LIKE, E REMOVER ELE SE ENVIADO NOVAMENTE
    Like.create(user: current_user, tweet: Tweet.find(params[:id]))
    redirect_to tweets_path
  end

  def find
    Like
  end

end
