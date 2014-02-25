namespace :db do
  desc "populate database with sample data"
  task populate: :environment do
    admin = User.create!(name: "admin",
                         email: "admin@test.com",
                         password: "test12345",
                         password_confirmation: "test12345",
                         admin: true)

    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@test.com"
      password  = "test12345"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end
  end
end