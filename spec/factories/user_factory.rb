FactoryGirl.define do
  factory :user do
    # first_name "John"
    # last_name  "Doe"
    email "user@email.com"
    password "userpassword"
    admin false
  end

  # # This will use the User class (Admin would have been guessed)
  # factory :admin, class: User do
  #   # first_name "Admin"
  #   # last_name  "User"
  #   email "admin@email.com"
  #   password "adminpassword"
  #   admin      true
  # end
end
