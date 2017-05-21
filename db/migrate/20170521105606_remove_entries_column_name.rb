class RemoveEntriesColumnName < ActiveRecord::Migration[5.0]
  def change
    remove_column :entries, :name
  end
end
