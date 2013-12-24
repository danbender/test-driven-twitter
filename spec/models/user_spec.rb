require 'spec_helper'

describe User do
  before(:each) { @user = User.new(name: 'test user', email: 'mail@example.com')}
  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }

  # sanity check
  it { should be_valid }

  describe 'when name is not present' do
    before { @user.name = '' }
    it { should_not be_valid }
  end

  describe 'when email is not present' do
    before { @user.email = '' }
    it { should_not be_valid }
  end

  describe 'when name is too long' do
    before { @user.name = 'a' * 31 }
    it { should_not be_valid }
  end
end
