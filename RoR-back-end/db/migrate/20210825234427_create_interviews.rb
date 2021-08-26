class CreateInterviews < ActiveRecord::Migration[6.1]
  def change
    create_table :interviews do |t|
      t.integer :round
      t.string :interviewer
      t.string :interviewer_email
      t.date :date
      t.text :note

      t.timestamps
    end
  end
end
