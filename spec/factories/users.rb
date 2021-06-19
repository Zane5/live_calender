# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  first_name      :string
#  is_entrepreneur :boolean
#  is_partner      :boolean
#  last_name       :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email     (email) UNIQUE
#  index_users_on_username  (username) UNIQUE
#
FactoryBot.define do
  factory :user do
    username { SecureRandom.hex(3) }
    first_name { %w[Adam Sam Mike Jack].sample }
    last_name { ["Wang", "de Von", "Jang"] }
    email { "#{SecureRandom.hex(4)}@ex.com" }

    is_partner { [true, false].sample }
    is_entrepreneur { !is_partner }
  end
end
