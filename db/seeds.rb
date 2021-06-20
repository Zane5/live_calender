# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

partner1 = User.create!(
  first_name: "Sam",
  last_name: "Wang",
  email: "sam@example.org",
  username: "P1",
  is_partner: true
)

partner2 = User.create!(
  first_name: "Adam",
  last_name: "Zhang",
  email: "adam@example.org",
  username: "P2",
  is_partner: true
)

partner3 = User.create!(
  first_name: "Jess",
  last_name: "Deng",
  email: "Jess@example.org",
  username: "P3",
  is_partner: true
)

partner4 = User.create!(
  first_name: "Eass",
  last_name: "Ding",
  email: "Eass@example.org",
  username: "P4",
  is_partner: true
)

ent1 = User.create!(
  first_name: "ent1",
  last_name: "Wang",
  email: "ent1@example.org",
  username: "ent1",
  is_entrepreneur: true
)

ent2 = User.create!(
  first_name: "ent2",
  last_name: "Zhang",
  email: "ent@example.org",
  username: "ent2",
  is_entrepreneur: true
)

ent3 = User.create!(
  first_name: "ent3",
  last_name: "hui",
  email: "ent3@example.org",
  username: "ent3",
  is_entrepreneur: true
)

ent4 = User.create!(
  first_name: "ent4",
  last_name: "Ding",
  email: "ent4@example.org",
  username: "ent4",
  is_entrepreneur: true
)

Meeting.create!(
  duration: 1,
  is_available: false,
  start_time: DateTime.strptime("07/01/2021 09:00", "%m/%d/%Y %H:%M"),
  meeting_date: '07/01/2021'.to_date,
  partner_id: partner1.id,
  entrepreneur_id: ent1.id
)

Meeting.create!(
  duration: 1,
  is_available: false,
  start_time: DateTime.strptime("01/07/2021 10:00", "%m/%d/%Y %H:%M"),
  meeting_date: '07/01/2021'.to_date,
  partner_id: partner1.id,
  entrepreneur_id: ent2.id
)

Meeting.create!(
  duration: 1,
  is_available: false,
  start_time: DateTime.strptime("01/07/2021 09:00", "%m/%d/%Y %H:%M"),
  meeting_date: '07/01/2021'.to_date,
  partner_id: partner2.id,
  entrepreneur_id: ent3.id
)

Meeting.create!(
  duration: 1,
  is_available: false,
  start_time: DateTime.strptime("01/07/2021 09:00", "%m/%d/%Y %H:%M"),
  meeting_date: '07/01/2021'.to_date,
  partner_id: partner3.id,
  entrepreneur_id: ent4.id
)
