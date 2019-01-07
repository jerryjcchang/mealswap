class ApplicationController < ActionController::Base

  layout 'application'

  helper_method :current_user

  def current_user
    if @current_user
      @current_user
    else
#this is something you may want to put in sessions rather than cookies
# the difference is that sessions is encrypted and cookies are not.
      @current_user = User.find_by(username: cookies[:current_user])
    end
  end


end
