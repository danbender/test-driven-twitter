require 'spec_helper'

describe 'StaticPages' do

  describe 'Home' do
    it "should have the content 'Welcome'" do
      visit '/static_pages/home'
      expect(page).to have_content('Welcome')
    end
  end

  describe 'Help' do
    it "should have the content 'Find Help here'" do
      visit '/static_pages/help'
      expect(page).to have_content('Find Help here')
    end
  end

  describe 'About' do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
  end

end