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
    username { "MyString" }
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    is_partner { "MyString" }
    is_entrepreneur { "MyString" }
  end
end
