class MedicinesController < ApplicationController
  before_action :authenticate_user!

  def index
    #ユーザがmedicineを未登録の場合、medicine#indexビューを正常に表示するためにインスタンス変数（箱）を用意する
    #このインスタンス変数はMedicine.newではなくbuitによりuserとmedicineを予め紐づけておく
    #Medicine.newでインスタンス変数を用意してしまうとcreate アクションでuser_idにID番号が正常に代入されない
    @medicines = current_user.medicines
    @medicine = current_user.medicines.build
  end

  def new
    @medicine = Medicine.new
  end

  def create
    @medicine = current_user.medicines.build(medicine_params)
    # respond_to do |format|
      if @medicine.save
        redirect_to medicines_path
        # format.html {redirect_to medicines_path }
        # format.js {render :index}
      else
        render :index
        # format.html {render :index}
      end
    # end
  end

  def destroy
    @medicine = Medicine.find(params[:id])
    @medicine.destroy
    redirect_to medicines_path
  end

  private

    def medicine_params
      params.require(:medicine).permit(Medicine.column_names.map{|c| c.to_sym})
    end

end
