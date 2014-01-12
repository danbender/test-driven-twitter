FactoryGirl.define do
  factory :user do
   sequence(:name) { |n| "Person-#{n}" }
   sequence(:email) { |n| "person-#{n}@test.com" }
   password "foobar"
   password_confirmation "foobar"

   factory :admin do
    admin trueg
   end
  end
end