class AddSubjectAndStudentKeysToSubStuLink < ActiveRecord::Migration[5.0]
  def change
    add_column :sub_stu_links, :subject_id, :integer
    add_column :sub_stu_links, :student_id, :integer
  end
end
