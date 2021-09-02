class ChangeColumnInterviewer < ActiveRecord::Migration[6.1]
  def change
    change_column :interviews, :interviewer, :string, array: true, default: [], using: "(string_to_array(interviewer, ','))"
    change_column :interviews, :interviewer_email, :string, array: true, default: [], using: "(string_to_array(interviewer_email, ','))"
  end
end
