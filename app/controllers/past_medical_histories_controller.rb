class PastMedicalHistoriesController < ApplicationController
  before_action :set_past_medical_history, only:[:edit, :update, :destroy]
  before_action :tranlatable_column_names, only:[:index]

  def index
    @past_medical_histories = PastMedicalHistory.all
    @past_medical_histories.each do |past_medical_history|
      if current_user.id == past_medical_history.user_id
        @past_medical_history = current_user.past_medical_history
      end
    end
  end

  def new
    @past_medical_history = PastMedicalHistory.new
  end

  def create
    @past_medical_history = PastMedicalHistory.new(past_medical_history_params)
    @past_medical_history.user_id = current_user.id
    @past_medical_history.save
    redirect_to past_medical_histories_path
  end

  def edit
  end

  def update
    @past_medical_history.update(past_medical_history_params)
    redirect_to past_medical_histories_path
  end

  def destroy
    @past_medical_history.destroy
    redirect_to past_medical_histories_path
  end

  private

    def past_medical_history_params
      params.require(:past_medical_history).permit(PastMedicalHistory.column_names.map{|c| c.to_sym })
    end

    def set_past_medical_history
      @past_medical_history = PastMedicalHistory.find(params[:id])
    end

    def tranlatable_column_names
      column_names = I18n.t('activerecord.attributes.past_medical_history')
        @icd_code = column_names[:icd_code]
        @brain_disease_in_the_past = column_names[:brain_disease_in_the_past]
        @heart_disease_in_the_past = column_names[:heart_disease_in_the_past]
        @surgery_in_the_past = column_names[:surgery_in_the_past]
        @hospitalized_in_the_past = column_names[:hospitalized_in_the_past]
        @attending_to_a_hospital_now = column_names[:attending_to_a_hospital_now]
    end

end
