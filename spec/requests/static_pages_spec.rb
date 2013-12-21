require 'spec_helper'

describe 'StaticPages' do

  subject { page }

  describe 'Home' do
    before(:each) { visit root_path }
    it { should have_content('Welcome') }
    it { should have_title(full_title('')) }
    it { should_not have_title(" | Home") }
  end

  describe 'Help' do
    before(:each) { visit help_path }
    it { should have_content('Find Help here') }
    it { should have_title(full_title('Help')) }
  end

  describe 'About' do
    before(:each) { visit about_path }
    it { should have_content('About') }
    it { should have_title(full_title('About')) }
  end

  describe 'Contact' do
    before(:each) { visit contact_path  }
    it { should have_content('Contact us') }
    it { should have_title(full_title('Contact')) }
  end
end