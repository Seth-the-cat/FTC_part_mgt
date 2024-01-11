class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception

   before_action :check_authentication #logged in

    def check_authentication
      unless params[:controller] == 'devise/sessions' or params[:controller] == 'devise/passwords' or params[:controller] == 'devise/registrations'
        unless current_user
          session[:intended_action] = action_name
          session[:intended_controller] = controller_name
          redirect_to new_user_session_path
        end
      end
    end

   before_action :check_authorization #appropriate role/assignment

    private

    def check_authorization
      unless params[:controller] == 'devise/sessions' or params[:controller] == 'devise/passwords' or params[:controller] == 'devise/registrations'
        unless current_user.can?(action_name, controller_name)
          if !request.env["HTTP_REFERER"].blank? and request.env["HTTP_REFERER"] != request.env["REQUEST_URI"]
            redirect_to root_path, notice: "You are not authorized to view the page you requested - "+action_name+" "+controller_name
          else
            redirect_to root_path, notice: "You are not authorized to view the page you requested"
          end
        end
      end
    end

    def after_sign_in_path_for(resource)
     @user = current_user
     if user_signed_in?
       root_path
     end
    end


    def after_sign_in_path_for(resource)
      @user = current_user
       if user_signed_in?
         if current_user.roles.any? {|role| role.name == "Super User" or role.name == "Admin"}
           parts_path
         else
           homepage_path
         end
       end
     end

end
