puts "🌱 Seeding spices..."

# Seed your database here
User.destroy_all

#User
u1 = User.create(name: "Bob")

#Trip
summer = Trip.find_or_create_by(title: "Summer Vacation", startDate: "2019-8-10", endDate: "2019-8-20", destination: "France", user_id: 1)

#Day
day1 = Day.create(trip_id: 1)
day2 = Day.create(trip_id: 1)
day3 = Day.create(trip_id: 1)
day4 = Day.create(trip_id: 1)
day5 = Day.create(trip_id: 1)
day6 = Day.create(trip_id: 1)
day7 = Day.create(trip_id: 1)
day8 = Day.create(trip_id: 1)
day9 = Day.create(trip_id: 1)
day10 = Day.create(trip_id: 1)

#Todo
tower = Todo.find_or_create_by(place: "Eiffel Tower", memo: "it is a famous landmark of the city", day_id: 3)
museum = Todo.find_or_create_by(place: "Louvre Museum", memo: "it is a famous museum of the city", day_id: 1)
shopping = Todo.find_or_create_by(place: "Champs-Élysées", memo: "it is a famous shopping street of the city", day_id: 5)
sightseeing = Todo.find_or_create_by(place: "Notre-Dame Cathedral", memo: "it is a famous building of the city", day_id: 9)

puts "✅ Done seeding!"
