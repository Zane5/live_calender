# == Schema Information
#
# Table name: meetings
#
#  id              :integer          not null, primary key
#  duration        :integer
#  is_available    :boolean
#  meeting_date    :date
#  start_time      :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  entrepreneur_id :integer
#  partner_id      :integer
#
# Indexes
#
#  index_meetings_on_meeting_date  (meeting_date)
#  index_meetings_on_start_time    (start_time)
#
# Foreign Keys
#
#  entrepreneur_id  (entrepreneur_id => users.id)
#  partner_id       (partner_id => users.id)
#
class Meeting < ApplicationRecord
  belongs_to :partner, class_name: "User"
  belongs_to :entrepreneur, class_name: "User"
end
