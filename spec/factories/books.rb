FactoryBot.define do
  factory :book do
    sequence(:title) { |n| "Mytitle#{n}" }
    author { "MyString" }
    #publesher { "MyString" }
    genre { "MyString" }
  end
end
