require 'spec_helper'

describe "UserPages" do

  subject { page }

  describe "Signup_page" do
    before { visit signup_path }
    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
=begin
      get user_pages_index_path
      response.status.should be(200)
=end
  end
end
