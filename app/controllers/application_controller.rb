class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  private
  def set_locale
    if cookies[:educator_locale] && I18n.available_locales.include?(cookies[:educator_locale].to_sym)
      locale = cookies[:educator_locale].to_sym
      l = [:es, :en].include?(locale) ? locale : :en
    else
      l = I18n.default_locale
      cookies.permanent[:educator_locale] = l
    end
    I18n.locale = l
  end
end
