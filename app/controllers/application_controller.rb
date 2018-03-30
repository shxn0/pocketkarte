class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_filter :set_locale
  #
  # def set_locale
  #   I18n.locale = locale # デフォルトでは I18n.locale = :ja
  # end
  #
  # def locale
  #   @locale ||= params[:locale] || I18n.default_locale # 変数の値がnilであれば、右辺の値を代入する
  # end
  #
  # def default_url_options(options={})
  #   options.merge(locale: locale)
  # end

end
