module ApplicationHelper

  def format_logout
    if session[:user_id]
      link_to "Log Out", logout_path
    end
  end

  def user_trips
    current_user.trips ? current_user.trips : []
  end

  def create_nav
    if session[:user_id]
  
    end
  end
end
