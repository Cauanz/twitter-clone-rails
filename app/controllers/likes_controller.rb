class LikesController < ApplicationController

  def create
    Like.create(user: current_user, tweet: Tweet.find(params[:id]))
  end

end
