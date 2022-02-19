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
require 'test_helper'

class MessageThreadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
