class Task < ApplicationRecord
  validates :task_contents, presence: false
end
