class AllergiesController < ApplicationController

  def index
    @allergies = current_user.allergies
    @allergy = current_user.allergies.build
  end

  def create
    @allergy.user_id = current_user.id
    @allergy.save
    redirect_to allergies_path
  end

end
