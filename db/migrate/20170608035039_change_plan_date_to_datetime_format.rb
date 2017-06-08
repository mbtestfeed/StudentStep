class ChangePlanDateToDatetimeFormat < ActiveRecord::Migration[5.0]
  def change
    remove_column :plans, :plan_date
    add_column :plans, :plan_date, :datetime
  end
end
