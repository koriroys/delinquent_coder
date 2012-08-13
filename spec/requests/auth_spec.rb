require 'spec_helper'

describe "github authorization" do
  before do
    visit root_path
  end

  specify "splash screen" do
    expect(page).to have_content('Welcome to Delinquent Coder')
  end

  describe "logging in" do
    specify "succeeds" do
      click_link 'Login with Github'
      expect(page).to have_content('Success! You are now logged in with github.')
    end
  end

  describe "logging out" do
    specify "succeeds" do
      click_link 'Login with Github'
      click_link 'Logout'
      expect(page).to have_content('You are now logged out')
    end
  end

end
