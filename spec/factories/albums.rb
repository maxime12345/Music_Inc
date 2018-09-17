FactoryBot.define do
  factory :album do
    title 'Thriller'
    description 'lorem ipsum'
    author 'Michael Jackson'
    association :user
  end

  trait :invalid do
    title nil
  end

end
