Given /^a user visits the signin page$/ do
  visit signin_path
end
When /^he submits invalid signin information$/ do
  click_button "Sign in"
end
Then /^he should see an error message$/ do
  expect(page).to have_selector('div.alert.alert-error')
end

Given /^he has a valid account$/ do
  @user = User.create(name: "Example User", email: "user@example.com",
                      password: "abcdef", password_confirmation: "abcdef")
end
When /^he submits valid signin information$/ do
  fill_in "Email", with: @user.email
  fill_in "Password", with: @user.password
  click_button "Sign in"
end
Then /^he sees his profile page$/ do
  expect(page).to have_title(@user.name)
end
Then /^he sees a sign out link$/ do
  expect(page).to have_link("Sign out", href: signout_path)
end