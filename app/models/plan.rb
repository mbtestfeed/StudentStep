class Plan < ApplicationRecord
  belongs_to :subject
  has_many :tasks

  validates_uniqueness_of :name, scope: :plan_date, message: ' is already taken for this subject on that date.'
end
