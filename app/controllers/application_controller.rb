class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    session[:locale] = params[:locale] if params[:locale].present?
    cookies[:locale]
    if cookies[:locale].present?
      I18n.locale = session[:locale] || I18n.default_locale
    end
  end

end
