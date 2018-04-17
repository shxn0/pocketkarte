class Medicine < ActiveRecord::Base
  validates :medicine_name, presence: true
  belongs_to :user

  mount_uploader :medicine_img, MedicineUploader

  # mount_uploader  ：画像のアップロード宣言
  # :medicine_img   ：テーブル内の画像のパスが入っているカラム名
  # MedicineUploader：MidicineUploaderクラス(ファイル内)の設定を元にアップロードすることを意味する

end
