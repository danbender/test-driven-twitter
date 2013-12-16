require 'spec_helper'

describe 'StaticPages' do

  describe 'Home' do
    before(:each) { visit '/static_pages/home' }

    it "should have the content 'Welcome'" do
      expect(page).to have_content('Welcome')
    end
    it "should have a title" do
      expect(page).to have_title('TDD Twitter | Home')
    end
  end

  describe 'Help' do
    before(:each) { visit '/static_pages/help' }

    it "should have the content 'Find Help here'" do
      expect(page).to have_content('Find Help here')
    end
    it "should have a title" do
      expect(page).to have_title('TDD Twitter | Help')
    end
  end

  describe 'About' do
    before(:each) { visit '/static_pages/about' }

    it "should have the content 'About'" do
      expect(page).to have_content('About')
    end
    it "should have a title" do
      expect(page).to have_title('TDD Twitter | About')
    end
  end

end