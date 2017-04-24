FactoryGirl.define do
  factory :month do
    month Time.new(2016,1,1)
    import_parties_status 0
    import_loans_status 0
    import_mitigants_status 0
    aasm_state :inicio
    company
  end

  factory :month_last do
    month "20071130"
    status 1
    company 1
  end
          
  factory :month_future, :class => 'Month' do
    month Time.new(2020,1,1)
    status 1
    company 1
  end
  
  factory :month_now,  :class => 'Month' do
    month "20170101"
    status 1
    company 1
  end
  
end

