FactoryGirl.define do
  factory :user do
  	first_name FFaker::Name.first_name
  	last_name FFaker::Name.last_name
  	user_name FFaker::Internet.user_name
  	email FFaker::Internet.email
  	password FFaker::Lorem.words(2).join
  end
end
