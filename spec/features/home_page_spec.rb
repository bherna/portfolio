require 'rails_helper'

RSpec.feature "Visiting the homepage", type: :feature do

  feature "when logged out" do

    scenario "we should see the login page/ sign up" do
      visit root_path
      expect(page).to have_text("Sign up")
    end

  end


  feature "when logged in" do

    background do
      User.create(email: 'abc@gmail.com', password: '123456')
      visit '/users/sign_in'
      fill_in 'Email', with: 'abc@gmail.com'
      fill_in 'Password', with: '123456'
      click_button 'Log in'
    end

    scenario "we should see the sign out option" do
      expect(page).to have_content("Logout")
    end

    scenario "we should see projects" do
      visit root_path
      expect(page).to have_text("Projects")
    end

    #scenario "The visitor should see projects" do
    # visit root_path
      #expect(page).to have_text("Projects")
    #end
  end
end
