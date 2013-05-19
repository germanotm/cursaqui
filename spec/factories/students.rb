FactoryGirl.define do
  factory :basic_student, :class => Student do |f|
    f.sequence(:name) { |n| "foo#{n}name" }
    f.sequence(:registry) { |n| "#{n}" }
    f.sequence(:email) { |n| "foo#{n}@example.com" }
    f.date Date.today
  end  
end
