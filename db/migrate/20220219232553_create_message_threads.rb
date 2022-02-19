class CreateMessageThreads < ActiveRecord::Migration[5.2]
  def change
    create_table :message_threads do |t|
      t.string :title, null: false
      t.integer :channel_id
      t.boolean :is_thread, default: false, null: false
      t.timestamps
    end
    add_index :message_threads, :title
  end
end
