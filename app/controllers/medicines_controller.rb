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
    if params[:back]
      @medicine = Medicine.new(medicine_params)
    else
      @medicine = Medicine.new
    end
  end

  def confirm
    @medicine = current_user.medicines.build(medicine_params)
    render :new if @medicine.invalid?
  end

  def create
    # retrieve_from_cache!メソッドでキャッシュから画像を復元して保存する
    # params[:cache] => {"medicine_img"=>"1521100613-68352-0005-4586/moguo.jpg"}が格納されている
    @medicine = current_user.medicines.build(medicine_params)
    @medicine.medicine_img.retrieve_from_cache! params[:cache][:medicine_img]
    if @medicine.save
      redirect_to medicines_path
    else
      render :index
    end
  end

  def update
    @medicine.update(medicine_params)
    redirect_to medicines_path
  end

  def destroy
    @medicine = Medicine.find(params[:id])
    @medicine.destroy
    # redirect_to medicines_path
    render template: "top/index", locals: {para: @params, request_first: @request_first, request_second: @request_second}
  end


  private

    def medicine_params
      params.require(:medicine).permit(Medicine.column_names.map{|c| c.to_sym})
    end

end
