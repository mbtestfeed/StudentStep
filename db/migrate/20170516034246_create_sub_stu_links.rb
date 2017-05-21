class CreateSubStuLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_stu_links do |t|

      t.timestamps
    end
  end
end
