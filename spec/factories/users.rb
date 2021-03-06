FactoryGirl.define do
  sequence :github_id do |n|
    n
  end
  
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    duns_number { Faker::Company.duns_number }
    github_id 123456

    factory :admin_user do
      github_id { Admins.github_ids.first }
    end
  end
end
