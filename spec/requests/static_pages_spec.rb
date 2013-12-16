require 'spec_helper'

describe 'StaticPages' do

  describe 'home' do
    it "should have the content 'Welcome'" do
      visit '/static_pages/home'
      expect(page).to have_content('Welcome')
    end
  end

  describe 'help' do
    it "should have the content 'Find Help here'" do
      visit '/static_pages/help'
      expect(page).to have_content('Find Help here')
    end
  end

end