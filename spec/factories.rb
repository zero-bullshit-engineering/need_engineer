# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end

  factory :project_profile do
    name { "My Project" }
    short_description { "A very cool project" }
    domain_introduction { "Something something" }
    project_link { "https://google.com" }
    association :user
  end
end
