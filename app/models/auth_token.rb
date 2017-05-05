class AuthToken < ApplicationRecord
  # モデルの関連付け
  belongs_to :user
end
