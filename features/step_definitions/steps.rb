### UTILITY METHODS ###
def create_process_manager
  @user = FactoryGirl.create(:user_process_manager)
end

def sign_in
  #visit '/users/sign_out'
  visit '/users/sign_in'
  fill_in "user_email", :with => @user.email
  fill_in "user_password", :with => @user.password
  select "TESTE", :from => "user_company_id"
  select "2016-01-01", :from => "user_month_id"
  click_button "Log in"
end

Given /^I am authenticated as a Process Manager$/ do
  create_process_manager
  sign_in
end

#Given(/^I am authenticated as "([^"]*)"$/) do |user|
#Given(/^I am authenticated as Analista01$/) do
Given(/^I am authenticated as "(.*?)"$/) do |user|
  byebug
  if user == "analista"
    @user = User.where("email=? ","jose.analista@teste.com").first
    @user.password = "password"
    sign_in
  end
end

Given /^there is a Company$/ do
  @company = FactoryGirl.create(:company)
end

Given /^there is a future Month$/ do
  @month = FactoryGirl.create(:month)
end

Given /^there is a present Month$/ do
  @month = FactoryGirl.create(:month_now)
end

Given(/^there's a user "(.*?)"$/) do |full_name|
  if full_name = "analista" then
    @user = FactoryGirl.create(:user_analista)
  end
end


Given(/^there's Grupo de Analise "([^"]*)"$/) do |full_name|
  if full_name = "Grupo1" then
    @group = FactoryGirl.create(:grupo_analise)
  end
end

Given /^I am not authenticated$/ do
  visit('/users/sign_out') # ensure that at least
end

#WHEN
When (/^I go to the "(.*)" page/) do |place|
  path_to_page_name = path_to(place)
  visit path_to_page_name
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

When /^In line "(.*?)" I press "(.*?)" file "(.*?)"$/ do |line,button,file|
  case file
  when "parties"
    find(:xpath, "(//tr[contains(.,line)]/td/a)[1]", :text => button).click
  when "loans"
    find(:xpath, "(//tr[contains(.,line)]/td/a)[2]", :text => button).click
  when "mitigants"
    find(:xpath, "(//tr[contains(.,line)]/td/a)[3]", :text => button).click
  end
end

When /^I fill in regra$/ do
  fill_in("rulesii_rule", :with => "\"TotalPartyExposure\">1000")
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end



When /^(?:|I )choose file "([^"]*)"$/ do |file|
  attach_file('file', File.expand_path(file))
  ##attach_file('file', File.absolute_path(file))
end

When /^I follow "(.*?)"$/ do |link|
      click_link link
end

When(/^I chosee "(.*?)" from drop box "(.*?)"$/) do |option, box|
  select(option, :from => box)
end


Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

Then /^(?:|I )should see "([^"]*)" before "([^"]*)" and after "([^"]*)"$/ do |phrase_1, phrase_2,phrase_3|
  #save_and_open_page
  first_position = page.body.index(phrase_1)
  second_position = page.body.index(phrase_2)
  third_position = page.body.index(phrase_3)
  if not(first_position.nil?)&&not(second_position.nil?)&&not(third_position.nil?) then  
    first_position.should < second_position and second_position.should < third_position
  else
    logout
  end
end

