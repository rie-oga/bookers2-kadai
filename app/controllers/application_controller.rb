class ApplicationController < ActionController::Base
	before_action :authenticate_user!　#devise側が用意しているメソッド。ログイン認証されていなければ、ログイン画面へリダイレクトする機能
	before_action :configure_permitted_parameters, if: :devise_controller? #←？この１行何だ。書いた覚えない
  	protected
  	def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  	end


end
