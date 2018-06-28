class UsersController < ApplicationController
  def show
  	if User.find_by(id: params[:id])

  		@user = User.find(params[:id])
  		@tweet_new = Tweet.new
  		@tweets_show = @user.tweets
      @tags = Tag.all

  	else redirect_to user_path(current_user.id)
  	end
  end

  def edit
  	@user = User.find(params[:id])
  		if @user != current_user
  			redirect_to user_path(current_user.id)
  		end
  end

  def update
  	@user = User.find(params[:id])
  		if @user.update(user_params)
  			redirect_to user_path(current_user.id)
  		else
  			render :edit
  		end
  end

  private
  def user_params
  	params.require(:user).permit(:user_name, :introduction, :image)
  end
end
