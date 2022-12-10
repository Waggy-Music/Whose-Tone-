class ApplicationController < ActionController::Base
  
  def after_sign_up_path_for(_resource)
    case resource
    when Admin
      admin_path
    when User
      root_path
    end
  end
  
  def after_sign_out_path_for(resource)
    if resource == :admin
      new_admin_session_path
    else
      root_path
    end
  end
  
end
