class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.datetime :start_time
      t.string :description
      t.boolean :message_sent

      t.timestamps
    end
  end
end
