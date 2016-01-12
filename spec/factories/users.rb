FactoryGirl.define :user do |f|
  factory :user do
    f.sequence(:email) { |n| "foo#{@example.com}"}
    f.password "secret"
  end

end 
