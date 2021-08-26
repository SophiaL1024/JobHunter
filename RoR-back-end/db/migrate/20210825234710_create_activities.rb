class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.text :follow_up
      t.text :reach_out
      t.text :send_thank_you
      t.text :prep_interview
      t.text :prep_cover_letter

      t.timestamps
    end
  end
end
