# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :basic_course, :class => Course do
    name "MyString"
    date_start DateTime.now
    date_end DateTime.now + 1.day
    location "MyText"
    capacity 1
  end
end
