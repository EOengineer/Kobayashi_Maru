# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'homer@simpsons.com'
    password 'password'
    password_confirmation 'password'
    role 'member'
  end
end
