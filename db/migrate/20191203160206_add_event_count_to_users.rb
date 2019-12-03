class AddEventCountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :events_count, :integer
  end
end
