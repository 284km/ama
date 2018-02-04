FactoryBot.define do
  factory :topic do
    user nil
    title "MyString"
    description "MyText"
    comments_count 1
  end
end
