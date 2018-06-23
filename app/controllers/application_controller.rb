class ApplicationController < ActionController::Base
	before_action :set_tweet
  	before_action :configure_permitted_parameters, if: :devise_controller?

 	def after_sign_in_path_for(resource)
 		user_path(current_user.id)
	end

 
protected
	def configure_permitted_parameters
  # 新規登録に使用するカラム
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name, :email, :password])
    end

private

	def set_tweet
		@tweet = Tweet.new
	end

end