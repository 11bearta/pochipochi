class TagsController < ApplicationController
  def show
  	@user = current_user
    @tweet_new = Tweet.new
    @tags = Tag.all

    @tag = Tag.find(params[:id])
  end
end
