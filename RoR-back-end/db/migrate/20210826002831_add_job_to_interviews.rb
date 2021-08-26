class AddJobToInterviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :interviews, :job, null: false, foreign_key: true
  end
end
