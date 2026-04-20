class TweetsController < ApplicationController
  before_action :authenticate_user!

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
    @tweet = Tweet.find(params[:id])
  end
  
  # /tweets - POST TWEETS FORMDATA
  def create
    @tweet = current_user.tweets.build(tweet_params)

    print @tweet

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
    @tweet = Tweet.find(params[:id])
  end

  #tweets/:id - GET/PUT/PATCH TWEET
  def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to @tweet
    else
      flash[:error] = "Something went wrong"
      render :edit
    end
  end

  def 

  # VALIDATE PARAMS
  def tweet_params
    params.require(:tweet).permit(:body)
  end

end
