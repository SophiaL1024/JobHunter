class AddStatusToJobs < ActiveRecord::Migration[6.1]
  def change
    add_reference :jobs, :status, null: false, foreign_key: true
  end
end
