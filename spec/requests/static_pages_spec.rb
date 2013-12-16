require 'spec_helper'

describe 'StaticPages' do

  describe 'home' do
    it "should have the content 'Welcome'" do
      visit '/static_pages/home'
      expect(page).to have_content('Welcome')
    end
  end

end