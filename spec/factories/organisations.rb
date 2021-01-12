FactoryBot.define do
  factory :organisation do
    sequence(:name) { |n| "My organisation name #{n}" }
    sequence(:slug) { |n| "my-organisation-name-#{n}" }
  end
end
