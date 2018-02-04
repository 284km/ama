FactoryBot.define do
  factory :comment do
    topic nil
    user nil
    content "MyText"
    likes_count 1
  end
end
