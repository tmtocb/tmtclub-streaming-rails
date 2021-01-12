FactoryBot.define do
  factory :tab do
    sequence(:name) { |n| "My tab name #{n}" }
    sequence(:description) { |n| "My tab description {n}" }
    sequence(:slug) { |n| "my-tab-name-#{n}" }
    organisation_id { 1 }
  end
end
