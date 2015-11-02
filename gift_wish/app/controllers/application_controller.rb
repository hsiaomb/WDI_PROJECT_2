class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  # my custom fields are :name, :heard_how
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:username, :first_name, :last_name, :gender, :email, :birth_date, :shirt_size, :shoe_size, :waist_size, :dress_size, :photo_url, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:username, :first_name, :last_name, :gender, :email, :birth_date, :shirt_size, :shoe_size, :waist_size, :dress_size, :photo_url, :password, :password_confirmation)
    end
  end

  def users_params
    params.require(:users).permit(:username, :first_name, :last_name, :gender, :email, :birth_date, :shirt_size, :shoe_size, :waist_size, :dress_size, :photo_url, :password, :password_confirmation, product_ids:[])
  end
end
