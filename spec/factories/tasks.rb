# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "MyString"
    created_by 1
    due_at "2014-05-22 01:33:26"
  end
end
