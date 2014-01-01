FactoryGirl.define do
  factory :user do
    name                  'dan'
    email                 'dan@test.com'
    password              'test12345'
    password_confirmation 'test12345'
  end
end
