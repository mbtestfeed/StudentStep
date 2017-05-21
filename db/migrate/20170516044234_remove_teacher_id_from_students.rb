class RemoveTeacherIdFromStudents < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :teacher_id
  end
end
