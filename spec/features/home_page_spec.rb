require 'rails_helper'

RSpec.feature "Visiting the homepage", type: :feature do



  scenario "when Not logged in" do
    visit root_path
    expect(page).to have_text("Sign up")
  end

  scenario "when the user is logged in" do
    #login_user
  end



  #scenario "The visitor should see projects" do
   # visit root_path
    #expect(page).to have_text("Projects")
  #end
end
