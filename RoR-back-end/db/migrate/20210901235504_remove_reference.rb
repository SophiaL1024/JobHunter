class RemoveReference < ActiveRecord::Migration[6.1]
  def change
    remove_reference :interviews, :interview_type, index: true, foreign_key: true
  end
end
