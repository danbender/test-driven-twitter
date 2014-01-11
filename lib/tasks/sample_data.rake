namespace :db do
  desc "populate database with sample data"
  task populate: :environment do
    User.create!(name: "test",
                 email: "test@test.com",
                 password: "test12345",
                 password_confirmation: "test12345")

    99.times do |n|
      name    = Faker::Name.name
      email   = "example-#{n+1}@test.com"
      pasword = "test12345"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end