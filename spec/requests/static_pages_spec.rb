require 'spec_helper'

describe 'StaticPages' do

  let(:base_title) { 'TDD Twitter'}
  describe 'Home' do
    before(:each) { visit '/static_pages/home' }

    it "should have the content 'Welcome'" do
      expect(page).to have_content('Welcome')
    end
    it "should have a title" do
      expect(page).to have_title("#{base_title}")
    end
    it "should not have the custom page title" do
      expect(page).to_not have_title(" | Home")
    end
  end

  describe 'Help' do
    before(:each) { visit '/static_pages/help' }

    it "should have the content 'Find Help here'" do
      expect(page).to have_content('Find Help here')
    end
    it "should have a title" do
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe 'About' do
    before(:each) { visit '/static_pages/about' }

    it "should have the content 'About'" do
      expect(page).to have_content('About')
    end
    it "should have a title" do
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe 'Contact' do
    before(:each) { visit '/static_pages/contact'}

    it "should have the content 'Contact us'" do
      expect(page).to have_content 'Contact us'
    end

    it 'should have a title' do
      expect(page).to have_title("#{base_title} | Contact")
    end
  end

end