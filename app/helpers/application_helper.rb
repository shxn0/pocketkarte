module ApplicationHelper

  # def i18n_url_for(options)
  #   if options[:locale] == I18n.default_locale
  #     options[:locale] = nil
  #   end
  #   url_for(options)
  # end

  def profile_img(user)
    unless user.provider.blank?
      img_url = user.image_url
    else
      img_url = 'no_image.png'
    end
    image_tag(img_url, alt: user.name)
  end

end
