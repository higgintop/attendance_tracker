require 'rails_helper'

feature "Managing Students" do
  scenario "viewing list of tracks" do
    Fabricate(:student, name: "Allison")
    Fabricate(:student, name: "Kristen")
    Fabricate(:student, name: "Tyler")
    visit root_path
    click_on "Students"
    current_path.should == "/students" # We wouldn't normally test the exact path
    within("ul#students") do
      page.should have_css("li:nth-child(1)", text: "Allison")
      page.should have_css("li:nth-child(2)", text: "Kristen")
      page.should have_css("li:nth-child(3)", text: "Tyler")
    end
  end
end
