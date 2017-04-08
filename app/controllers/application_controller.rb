class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  require 'date'
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def after_sign_in_path_for(resource_or_scope)
    session[:company_id] = params["user"]["company_id"]
    session[:month_id] = params["user"]["month_id"]
    case current_user.role
    when "process_manager"      
        months_path
    else
        destroy_user_session_path
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
  
  def main_admin
    @current_month = current_date.strftime('%m/%y')
  end
  

  protect_from_forgery with: :exception

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
  
  def sign_in_params
    params.require(:user).permit(:email, :password,:company_id,:month_id)
  end
end
