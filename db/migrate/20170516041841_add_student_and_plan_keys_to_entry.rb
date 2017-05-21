class AddStudentAndPlanKeysToEntry < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :student_id, :integer
    add_column :entries, :plan_id, :integer
  end
end
