# == Schema Information
#
# Table name: meetings
#
#  id              :integer          not null, primary key
#  duration        :integer
#  is_available    :boolean
#  start_time      :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  entrepreneur_id :integer
#  partner_id      :integer
#
# Indexes
#
#  index_meetings_on_start_time  (start_time) UNIQUE
#
# Foreign Keys
#
#  entrepreneur_id  (entrepreneur_id => users.id)
#  partner_id       (partner_id => users.id)
#
require 'rails_helper'

RSpec.describe Meeting, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
