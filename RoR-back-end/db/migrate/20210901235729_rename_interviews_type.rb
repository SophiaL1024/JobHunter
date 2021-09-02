class RenameInterviewsType < ActiveRecord::Migration[6.1]
  def change
    rename_column :interview_types, :type, :status
  end
end
