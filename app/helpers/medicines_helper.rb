module MedicinesHelper

  def
    case Rails.env

    when 'production'
      @medicine.medicine_img.url.slice(63..-1)

    when 'development'

  end





end
