class AddStudentIDtoEntry < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :student_id, :integer
  end
end
