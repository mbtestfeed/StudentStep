class AddTeacherKeyToSubject < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :teacher_id, :integer
  end
end
