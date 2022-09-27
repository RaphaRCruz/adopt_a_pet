puts 'Cleaning database...'
Pet.destroy_all

puts 'Creating pets...'
rock = { name: 'Rock', category: 'Dog', birth: Date.new(2019, 06, 13), adopted: false, owner: nil, adoption_time: nil }
apollo = { name: 'Apollo', category: 'Dog', birth: Date.new(2021, 03, 03), adopted: false, owner: nil, adoption_time: nil }
atila = { name: 'Átila', category: 'Dog', birth: Date.new(2021, 11, 02), adopted: false, owner: nil, adoption_time: nil }
simba = { name: 'Simba', category: 'Cat', birth: Date.new(2020, 01, 25), adopted: false, owner: nil, adoption_time: nil }
hunter = { name: 'Hunter', category: 'Cat', birth: Date.new(2020, 12, 07), adopted: false, owner: nil, adoption_time: nil }

[rock, apollo, atila, simba, hunter].each do |attributes|
  pet = Pet.create!(attributes)
  puts "Created #{pet.name}"
end
puts 'Finished!'
