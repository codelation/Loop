# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :issue do
    title "MyString"
    body "MyText"
    budgeted_time 1
    priority 1
  end
end
