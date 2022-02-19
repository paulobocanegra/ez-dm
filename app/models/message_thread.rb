# == Schema Information
#
# Table name: message_threads
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  channel_id :integer
#  is_thread  :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class MessageThread < ApplicationRecord
    validates :title, presence: true
    validates :is_thread, inclusion: {in: [true, false]}
    validates :name, uniqueness: {scope: channel_id}

    
end
