puts 'Cleaning database...'
Pet.destroy_all

puts 'Creating pets...'
rock = { name: 'Rock', category: 'Dog', birth: Date.new(2019, 06, 13), adopted: false, owner: nil, adoption_time: nil, photo: 'https://www.petfriendsworld.pt/wp-content/uploads/2020/02/beagle3.jpg' }
apollo = { name: 'Apollo', category: 'Dog', birth: Date.new(2017, 03, 03), adopted: false, owner: nil, adoption_time: nil, photo:  'https://static1.patasdacasa.com.br/articles/2/13/62/@/6274-pastor-belga-uma-raca-de-cachorro-grand-articles_media_mobile-4.jpg' }
atila = { name: 'Átila', category: 'Dog', birth: Date.new(2016, 11, 02), adopted: false, owner: nil, adoption_time: nil, photo: 'https://encrypted-tbn0.gstatic.com/images\?q\=tbn:ANd9GcRWlPMBhdqZDPh8JQ_IqbmVNy56Goy4DcSb4g\&usqp\=CAU' }
simba = { name: 'Simba', category: 'Cat', birth: Date.new(2020, 01, 25), adopted: false, owner: nil, adoption_time: nil, photo:  'https://www.purina-latam.com/sites/g/files/auxxlc391/files/styles/kraken_generic_max_width_360/public/2021-10/comunicacao-gatos.jpg\?itok\=XXrkHiTq' }
hunter = { name: 'Hunter', category: 'Cat', birth: Date.new(2020, 12, 07), adopted: false, owner: nil, adoption_time: nil, photo:  'https://img.r7.com/images/gato-corpo-humano-morto-17012020141045307\?dimensions\=960x640' }

[rock, apollo, atila, simba, hunter].each do |attributes|
  pet = Pet.create!(attributes)
  puts "Created #{pet.name}"
end
puts 'Finished!'
