FactoryBot.define do
  factory :entry do
    user
    project
    description { 'hello world' }
    minutes { 10 }
    date { Date.today }
  end
end
