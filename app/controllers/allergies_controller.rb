class AllergiesController < ApplicationController

  def index
    @allergies = current_user.allergies
    @allergy = current_user.allergies.build
  end

  def create
    @allergy = current_user.allergies.build(allergy_params)
    @allergy.save
    redirect_to allergies_path
  end

  def destroy
    @allergy = Allergy.find(params[:id])
    @allergy.destroy
    redirect_to allergies_path
  end


  private

    def allergy_params
      params.require(:allergy).permit(:user_id, :allergy_name)
    end

end
