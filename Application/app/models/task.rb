class Task < ApplicationRecord
  # task_contentsカラムに対し空入力のバリデーションを設定
  validates :task_contents, presence: true
end
