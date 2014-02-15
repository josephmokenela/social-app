require 'spec_helper'
# These are the test cases but my testing engine is not working, it complains about the expect(page).have_*** methods, NoSuchMethod
describe "Static Pages" do
  describe "Home Page" do
    it "should have the content 'Social App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).have_content('Social App')
    end
    it "should have the title 'Social App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).have_title('Ruby on Rails Tutorial Social App | Home')
    end
end
  describe "Help Page" do
    it "should have the title 'Help'" do
      visit '/static_pages/help'
     expect(page).have_title('Ruby on Rails Tutorial Social App | Help')
    end
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).have_content('Help')
    end
  end

  describe "About Page" do
    it "should have title 'About Us'" do
      visit '/static_pages/help'
      expect(page).have_title('Ruby on Rails Tutorial Social App | About Us')
    end
    it "should have content 'About Us'" do
      visit '/static_pages/help'
      expect(page).have_content('About Us')
    end
  end
 end
