# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

2.times {
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email
  )

  2.times {
    event = Event.create(
      name: Faker::Name.name,
      date: Date.today,
      user_id: user.id
    )
    2.times {
      sponsor = Sponsor.create(
        name: Faker::Name.name,
        amount: Faker::Number.between(100, 500),
        event_id: event.id
      )
    }
  }
}
