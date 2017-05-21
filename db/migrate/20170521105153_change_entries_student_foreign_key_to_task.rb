class ChangeEntriesStudentForeignKeyToTask < ActiveRecord::Migration[5.0]
  def change
    rename_column :entries, :student_id, :task_id
  end
end
