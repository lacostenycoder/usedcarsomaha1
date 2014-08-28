FactoryGirl.define do
  factory :user do
    email "user@email.com"
    password "userpassword"
    admin false
  end

  factory :admin, class: User do
    email "admin@email.com"
    password "adminpassword"
    admin      true
  end
end
