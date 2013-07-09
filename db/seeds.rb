locations = [
  "Burnaby General Hospital",
  "Vancouver General Hospital",
  "Royal Columbian Hospital",
  "St. Paul's Hospital",
  "Surrey Memorial Hospital"
]

10.times do
  Shift.create(:location => locations.sample,
               :locationDetail => Faker::Lorem.word,
               :date => Time.now + rand(1..10).days,
               :duration => rand(5..20),
               :name => Faker::Name.name,
               :email => Faker::Internet.email,
               :taken => false,
               :notes => Faker::Lorem.paragraph,
               :uniqueID => (0...50).map{ ('a'..'z').to_a[rand(26)] }.join)
end