class RemovePlanColumnPlanJson < ActiveRecord::Migration[5.0]
  def change
    remove_column :plans, :plan_json
  end
end
