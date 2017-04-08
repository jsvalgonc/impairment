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

Given /^there is a Company$/ do
  @company = FactoryGirl.create(:company)
end

Given /^there is a future Month$/ do
  @month = FactoryGirl.create(:month)
end

Given /^there is a present Month$/ do
  @month = FactoryGirl.create(:month_now)
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


Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

