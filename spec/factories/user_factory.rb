FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  factory :user do
    email
    password "pass1"
    first_name "Email"
    last_name "Password"
    admin false
  end
  factory :admin, class: User do
    email
    password "pass2"
    first_name "Password"
    last_name "Email"
    admin true
  end
end
