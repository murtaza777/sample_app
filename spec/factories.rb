#FactoryGirl.define do
#  factory :user do
#    name   "Murtaza Kheriwala"
#    email  "murtaza@email.com"
#    password "abc456"
#    password_confirmation "abc456"
#  end
#end

FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Person #{n}" }
    sequence(:email) { |n| "person-#{n}@example.com"}
    password "abc456"
    password_confirmation "abc456"

    factory :admin do
      admin true
    end

  end

end