class ChangeEntriesColumnEntryJsonToStudentResponse < ActiveRecord::Migration[5.0]
  def change
    rename_column :entries, :entry_json, :student_response
  end
end
