
5.times do
  User.create :first_name => Faker::Name.name, :last_name => Faker::Hacker.verb, :email => Faker::Internet.email, :password => 'password'
end
