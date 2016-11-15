class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      @user = User.find_by(auth_token: token)
    end
  end
end
