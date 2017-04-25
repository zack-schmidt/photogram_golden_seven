FactoryGirl.define do
  factory :photo do
    sequence(:source) { |n| "https://some.image/url#{n}.jpeg" }
    sequence(:caption) { |n| "Some caption #{n}" }
  end
end
