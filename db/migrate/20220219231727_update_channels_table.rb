class UpdateChannelsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :channels, :owner_id, :string, null: false
  end
end
