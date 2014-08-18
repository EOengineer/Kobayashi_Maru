# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cancer_subtype, :class => 'CancerSubtypes' do
    name "MyString"
  end
end
