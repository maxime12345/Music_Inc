FactoryBot.define do
  factory :album do
    title 'Thriller'
    description 'lorem ipsum'
    author 'Michael Jackson'
    association :user
  end
end
