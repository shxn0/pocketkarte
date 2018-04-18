module MedicinesHelper

  def img_comfirm_path
    case Rails.env
      when 'production'
        @medicine.medicine_img.url.slice(62..-1)

      when 'development'
        @medicine.medicine_img.url.slice(63..-1)
    end
  end

end
