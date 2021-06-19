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
FactoryBot.define do
  factory :meeting do
    partner_id { "" }
    entrepreneur_id { "" }
    start_time { "2021-06-19 04:49:16" }
    duration { 1 }
    is_available { true }
  end
end
