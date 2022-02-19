class UpdateChannelDataType < ActiveRecord::Migration[5.2]
  def change
    remove_column :channels, :owner_id
    add_column :channels, :owner_id, :integer, null: false
  end
end
