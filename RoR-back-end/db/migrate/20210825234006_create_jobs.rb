class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :url
      t.date :deadline
      t.text :note
      t.integer :status
      t.date :applied_date

      t.timestamps
    end
  end
end
