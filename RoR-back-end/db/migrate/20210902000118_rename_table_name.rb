class RenameTableName < ActiveRecord::Migration[6.1]
  def change
    rename_table :interview_types, :statuses
  end
end
