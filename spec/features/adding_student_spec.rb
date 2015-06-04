require 'rails_helper'

feature "Adding Students" do
  scenario "happy path adding a new student" do
    visit students_path # the index page
    click_on "Add New Student"
    fill_in "Name", with: "Justin"
    click_on "Add"
    page.should have_css(".notice", text: "Student Justin has been added")
    current_path.should == students_path
    within("ul#students") do
      page.should have_content("Justin")
    end
  end
end
