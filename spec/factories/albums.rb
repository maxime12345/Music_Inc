FactoryBot.define do
  factory :album do
    sequence(:title) { |n| "Thriller#{n}" }
    description 'lorem ipsum'
    author 'Michael Jackson'
    association :user
  end

  trait :invalid do
    title nil
  end

end
