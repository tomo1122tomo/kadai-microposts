class Relationship < ApplicationRecord
  belongs_to :user
  # 命名規則を変更している補足設定
  belongs_to :follow, class_name: 'User'
end
