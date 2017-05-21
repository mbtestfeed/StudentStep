class SubStuLink < ApplicationRecord
  belongs_to :subject
  belongs_to :student

  validates_uniqueness_of :subject_id, scope: :student_id, message: 'already contains this student'
end
