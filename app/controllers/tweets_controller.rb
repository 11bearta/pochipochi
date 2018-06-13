class TweetsController < ApplicationController
  def top
  end
  def index
    @tweets = Tweet.all
    @tweet_new = Tweet.new
  end

  def show
    @tweet_show = User.find(params[:id])
    @user = User.find(current_user.id)
    @tweet_new = Tweet.new
  end

  def new
    @tweet = Tweet.new
  end

  def create
    tweet = Tweet.new(tweet_params)
    tweet.save
    redirect_to tweets_path
  end

  def edit
  end

  def update
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweets_path
  end
  private
  def tweet_params
    params.require(:tweet).permit(:text, :tag_id, :free_word, :user_id)
  end
end
