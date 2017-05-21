class Task < ApplicationRecord
  belongs_to :plan
  belongs_to :parent_task, class_name: 'Task', foreign_key: :parent_task_id

  has_many :tasks
  has_many :entries
end
