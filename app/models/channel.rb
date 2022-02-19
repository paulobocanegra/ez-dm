# == Schema Information
#
# Table name: channels
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  invite_code :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  owner_id    :string           not null
#
class Channel < ApplicationRecord
    after_initialize :generate_invite_code
    validates :name, :invite_code, presence: true
    validates :keycode, uniqueness: true

    private

    def generate_invite_code
        self.invite_code ||= SecureRandom::base64(12)
    end
end
