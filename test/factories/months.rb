FactoryGirl.define do
  factory :month do
    month Time.new(2020,1,1)
    status 1
  end

  factory :month_last do
    month "20071130"
    status 1
  end
          
  factory :month_future do
    month Time.new(2020,1,1)
    status 1
  end
end

