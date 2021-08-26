class AddJobToActivities < ActiveRecord::Migration[6.1]
  def change
    add_reference :activities, :job, null: false, foreign_key: true
  end
end
