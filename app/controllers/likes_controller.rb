class LikesController < ApplicationController

  def create
    Like.create(user: current_user, tweet: Tweet.find(params[:id]))
    redirect_to tweets_path
  end

end
