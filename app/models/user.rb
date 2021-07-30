#UserクラスはApplicationRecordを継承してる。
class User < ApplicationRecord
  #nameはカラを許さないで、文字数は５０文字まで
  validates :name, presence: true, length: { maximum: 50 }
  #パスワード付きのモデル作成をする場合は下記内容を利用するのが安全かつ効率のいい方法。ログイン認証の準備を用意してくれる。
  has_secure_password
  
  has_many :tasks
end
