class ChangeMessageSentDefaultValueInEvents < ActiveRecord::Migration[5.1]
  def change
    change_column_default :events, :message_sent, 'false'
  end
end
