class TweetsController < ApplicationController

  # /tweets - GET TWEETS
  def index
    @tweets = Tweet.all
  end

  # /tweets - GET TWEETS FORM
  def new
    @tweet = Tweet.new
  end

  def show
    @tweet = Tweet.find(params[:id])
  end
  
  
  # /tweets - POST TWEETS FORMDATA
  # TODO - NÃO FUNCIONANDO DE NOVO
  def create
    @tweet = Tweet.new(tweet_params)

    if @tweet.save
      flash[:success] = "Tweet successfully created"
      redirect_to @tweet
      # redirect_to tweets_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end
  

  def tweet_params
    params.require(:tweet).permit(:body)
  end

end
