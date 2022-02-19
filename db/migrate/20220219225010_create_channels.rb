class CreateChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :channels do |t|
      t.string :name, null: false
      t.string :invite_code, null: false
      t.timestamps
    end
    add_index :channels, :name
    add_index :channels, :invite_code, unique: true
  end
end
