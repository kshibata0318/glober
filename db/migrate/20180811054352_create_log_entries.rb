class CreateLogEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :log_entries do |t|
      t.integer:user_id,  null: false
      t.string:title
      t.string:description
      t.datetime:published_at
      t.string:status
      t.datetime:created_at
      t.timestamp:updated_at
    end
  end
end
