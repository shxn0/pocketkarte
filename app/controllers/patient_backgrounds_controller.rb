class PatientBackgroundsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_patient_background, only:[:edit, :update, :destroy]
  before_action :column_names_of_patient_background, only:[:index]

  def index
    @patient_backgrounds = PatientBackground.all
    @patient_backgrounds.each do |patient_background|
      if current_user.id == patient_background.user_id
        @patient_background = current_user.patient_background
        @age_of_patient = age_of_patient
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

  def destroy
    @patient_background.destroy
    redirect_to patient_backgrounds_path, confirm:{data:"Are you sure to delete?"}, notice:"Your registration has been deleted."
  end

  private
    def patient_background_params
      params.require(:patient_background).permit(PatientBackground.column_names.map{|c| c.to_sym})
    end

    def set_patient_background
      @patient_background = PatientBackground.find(params[:id])
    end

    def age_of_patient
      birthday = current_user.patient_background.birthday
      date_format = "%Y%m%d"
      (Date.today.strftime(date_format).to_i - birthday.strftime(date_format).to_i) / 10000
    end

    def column_names_of_patient_background
      #patient_backgroundの入力項目はconfig/locales/model.ja.ymlから呼び出して他言語切り替えに対応させている
      #column_namesにはpatient_backgroundの属性を取得して代入し、各項目名はキーを指定して取得
      column_names = I18n.t('activerecord.attributes.patient_background')
        @name = column_names[:name]
        @birthday = column_names[:birthday]
        @sex = column_names[:sex]
        @country = column_names[:country]
        @hight = column_names[:hight]
        @weight = column_names[:weight]
        @occupation = column_names[:occupation]
        @religion = column_names[:religion]
        @notes = column_names[:notes]
    end

end
