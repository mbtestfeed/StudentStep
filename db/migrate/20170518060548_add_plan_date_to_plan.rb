class AddPlanDateToPlan < ActiveRecord::Migration[5.0]
  def change
    add_column :plans, :plan_date, :date
  end
end
