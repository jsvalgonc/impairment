### UTILITY METHODS ###
def create_process_manager
  @user = FactoryGirl.create(:user_process_manager)
end

def sign_in
  visit '/users/sign_in'
  fill_in "user_email", :with => @user.email
  fill_in "user_password", :with => @user.password
  click_button "Log in"
end

Given /^I am authenticated as a Process Manager$/ do
  create_process_manager
  sign_in
end

Given(/^there is a future Month$/) do
  @month = FactoryGirl.create(:month)
end


#WHEN
When (/^I go to the "(.*)" page/) do |place|
 path_to_page_name = path_to(place)
 visit path_to_page_name
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

### THEN ###

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

