class AddSubjectKeyToPlans < ActiveRecord::Migration[5.0]
  def change
    add_column :plans, :subject_id, :integer
  end
end
