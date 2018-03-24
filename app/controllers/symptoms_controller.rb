class SymptomsController < ApplicationController

  before_action :set_symptom, only:[:edit, :update, :destroy]
  before_action :gets_symptom_names, only:[:index, :new, :edit, :update, :destroy]

  def index
    @symptoms = Symptom.all
    @symptoms.each do |symptom|
      if current_user.id == symptom.user_id
        @symptom = current_user.symptom
        gets_true_key_names
      end
    end
  end

  def new
    @symptom = Symptom.new
  end

  def create
    @symptom = Symptom.new(symptom_params)
    @symptom.user_id = current_user.id
    if @symptom.save
      redirect_to symptoms_path, notice: "Your registration has been completed"
    else
      render 'new' if @symptom.invalid?
    end
  end

  def edit
  end

  def update
    @symptom.update(symptom_params)
    if @symptom.invalid?
      redirect_to 'edit'
    else
      redirect_to symptoms_path
    end
  end

  def destroy
    @symptom.destroy
    redirect_to symptoms_path
  end

  private

    def symptom_params
      params.require(:symptom).permit(Symptom.column_names.map {|c| c.to_sym })
    end

    def set_symptom
      @symptom = Symptom.find(params[:id])
    end

    def gets_symptom_names
      @symptom_attributes = I18n.t('activerecord.attributes.symptom') #翻訳機能を実装するためにsymptomモデルの属性をハッシュで取得
      @symptom_keys = I18n.t('activerecord.attributes.symptom').keys #formでsymptomの各要素を取得するためにキーのみの配列を準備
    end

    def gets_true_key_names
      @true_symptom_attributes = @symptom.attributes.select{|k,v| v == true }
      @true_symptom_keys = @true_symptom_attributes.keys
      #@true_symptom_keys変数の値がstring型なのでシンボル型に上書きする
      @true_symptom_keys = @true_symptom_keys.map {|st| st.to_sym }
      # binding.pry
    end

end
