require 'spec_helper'

describe 'StaticPages' do
  subject { page }

  shared_examples_for 'all static pages' do
    it { should have_selector('h1', text: heading) }
    it { should have_title(page_title)}
  end

  describe 'Home' do
    before(:each)     { visit root_path }
    let(:heading)     { 'Welcome' }
    let(:page_title)  { '' }

    it_should_behave_like 'all static pages'
    it { should_not have_title(" | Home") }

    describe "for signed_in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
        sign_in user
        visit root_path
      end

      it "should render a user's feed" do
        user.feed.each do |item|
          expect(page).to have_selector("li##{item.id}", text: item.content)
        end
      end
    end
  end

  describe 'Help' do
    before(:each)     { visit help_path }
    let(:heading)     { 'Find Help here' }
    let(:page_title)  { 'Help' }

    it_should_behave_like 'all static pages'
  end

  describe 'About' do
    before(:each)     { visit about_path }
    let(:heading)     { 'About' }
    let(:page_title)  { 'About' }

    it_should_behave_like 'all static pages'
  end

  describe 'Contact' do
    before(:each)     { visit contact_path  }
    let(:heading)     { 'Contact us' }
    let(:page_title)  { 'Contact' }

    it_should_behave_like 'all static pages'
  end

  it "should test the links of nav in header and footer" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    expect(page).to have_title(full_title(''))
    click_link "Sign up"
    expect(page).to have_title(full_title('Sign up'))
  end
end