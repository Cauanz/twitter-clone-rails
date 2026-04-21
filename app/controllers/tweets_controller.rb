class TweetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, only: %i[show edit update destroy]

  # /tweets - GET TWEETS
  def index
    @tweets = Tweet.all
  end

  # /tweets - GET TWEET FORM
  def new
    @tweet = Tweet.new
  end

  # /tweet - GET TWEET (1 TWEET)
  def show

  end
  
  # /tweets - POST TWEETS FORMDATA
  def create
    @tweet = current_user.tweets.build(tweet_params)

    if @tweet.save
      flash[:success] = "Tweet successfully created"
      redirect_to @tweet
      # redirect_to tweets_path
    else
      Rails.logger.debug @tweet.errors.full_messages
      flash[:error] = "Something went wrong"
      render :new
    end
  end
  
  # /tweets - 
  def edit
  end

  #tweets/:id - GET/PUT/PATCH TWEET
  def update
    if @tweet.update(tweet_params)
      redirect_to @tweet
    else
      flash[:error] = "Something went wrong"
      render :edit
    end
  end

  def destroy
    @tweet.destroy
    redirect_to tweets_path
  end


  def set_product
    @tweet = Tweet.find(params[:id])
  end

  # VALIDATE PARAMS
  def tweet_params
    params.require(:tweet).permit(:body)
  end

end
