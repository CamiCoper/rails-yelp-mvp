# db/seeds.rb

CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants_attributes = [
  {
    name: "Epicure",
    address: "75008 Paris",
    phone_number: "123456789",
    category: "french"
  },
  {
    name: "Dishoom",
    address: "7 Boundary St, London E2 7JE",
    phone_number: "987654321",
    category: "belgian"
  },
  {
    name: "Pizza East",
    address: "56A Shoreditch High St, London E1 6PQ",
    phone_number: "5647382910",
    category: "italian"
  },
  {
    name: "Sushi Samba",
    address: "Heron Tower, London EC2N 4AY",
    phone_number: "1122334455",
    category: "japanese"
  },
  {
    name: "Dragon Inn",
    address: "123 Main St, San Francisco, CA",
    phone_number: "6677889900",
    category: "chinese"
  }
]

Restaurant.create!(restaurants_attributes)
puts "Finished!"
