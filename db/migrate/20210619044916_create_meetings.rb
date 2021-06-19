class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|
      t.bigint :partner_id
      t.bigint :entrepreneur_id
      t.datetime :start_time
      t.date :meeting_date
      t.bigint :duration
      t.boolean :is_available

      t.timestamps
    end

    add_index :meetings, :start_time
    add_index :meetings, :meeting_date

    add_foreign_key :meetings, :users, column: :partner_id
    add_foreign_key :meetings, :users, column: :entrepreneur_id
  end
end
