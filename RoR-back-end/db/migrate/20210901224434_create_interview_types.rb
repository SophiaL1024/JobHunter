class CreateInterviewTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :interview_types do |t|
      t.string :type
      t.reference :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
