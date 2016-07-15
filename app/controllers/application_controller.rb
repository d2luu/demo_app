class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  def normal_user?
    if current_user
      if current_user.admins?
        flash[:danger] = t "flash.is_admin"
        redirect_to root_path
      end
    end
  end
end
