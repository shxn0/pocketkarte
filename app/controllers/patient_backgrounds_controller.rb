class PatientBackgroundsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_patient_background, only:[:edit, :update, :destroy]

  def index
    @patient_backgrounds = PatientBackground.all
    @patient_backgrounds.each do |patient_background|
      if current_user.id == patient_background.user_id
        @patient_background = current_user.patient_background
      end
    end
  end

  def new
    @patient_background = PatientBackground.new
  end

  def create
    @patient_background = PatientBackground.new(patient_background_params)
    @patient_background.user_id = current_user.id
    if @patient_background.save
      redirect_to patient_backgrounds_path, notice:"Your registration has been compleated."
    else
      render "new" if @patient_background.invalid?
    end
  end

  def edit
  end

  def update
    @patient_background.update(patient_background_params)
    if @patient_background.invalid?
      redirect_to 'edit'
    else
      redirect_to patient_backgrounds_path
    end
  end

  def destory
  end

  private
    def patient_background_params
      params.require(:patient_background).permit(PatientBackground.column_names.map{|c| c.to_sym})
    end

    def set_patient_background
      @patient_background = PatientBackground.find(params[:id])
    end

end
