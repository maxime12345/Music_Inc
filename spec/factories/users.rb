FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "toto#{n}@example.com" }
    password 'secret-password'
  end
end
