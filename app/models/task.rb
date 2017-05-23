class Task < ApplicationRecord
  belongs_to :plan
  belongs_to :parent_task, class_name: 'Task', foreign_key: :parent_task_id, optional: true

  has_many :tasks
  has_many :entries
end
