class Task < ApplicationRecord
  TASKS = ['Description', 'Single-line input', 'Multi-line input'] #TODO: Change these to symbols. Track down all usages and refactor

  belongs_to :plan
  belongs_to :parent_task, class_name: 'Task', foreign_key: :parent_task_id, optional: true

  has_many :tasks
  has_many :entries

  validates :task_type, inclusion: {in: TASKS}
end
