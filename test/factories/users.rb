FactoryGirl.define do
  factory :user do
  end

  factory :user_process_manager, class: User do
    email "jose.lopes@teste.com"
    password "password"
    role :process_manager
  end  

  
  
end
