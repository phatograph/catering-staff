puts "Creating admins"
Admin.create! do |user|
  user.first_name = 'admin'
  user.last_name  = '1'
  user.email      = 'admin1@gmail.com'
  user.password   = 'password1'
end

puts "Creating waiters"

10.times do |i|
  Waiter.create! do |user|
    first_name = Faker::Name.first_name

    user.first_name = first_name
    user.last_name  = Faker::Name.last_name
    user.email      = "waiter#{i}@gmail.com"
    user.password   = 'password1'
  end
end

puts "Creating clients"

5.times do |i|
  Client.create! do |user|
    first_name = Faker::Name.first_name

    user.first_name = first_name
    user.last_name  = Faker::Name.last_name
    user.email      = Faker::Internet.email(first_name)
    user.password   = 'password1'
  end
end

puts "Creating events"

5.times do |i|
  Event.create! do |event|
    event.title = Faker::Lorem.sentence
  end
end

WaiterSkill.create! {|w| w.title = "Silver Service" }
WaiterSkill.create! {|w| w.title = "Wine Waiting" }
WaiterSkill.create! {|w| w.title = "Food Waiting" }
