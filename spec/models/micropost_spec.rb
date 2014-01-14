require 'spec_helper'

describe Micropost do
  let(:user) { FactoryGirl.create(:user) }
  before do
    # @micropost = user.microposts.build(content: "Lorem ipsum")
    @micropost = Micropost.new(content: "Lorem ipsum", user_id: user.id)
  end

  subject { @micropost }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }

  it { should be_valid }

  describe "when user is not present" do
    before { @micropost.user_id = nil }
    it { should_not be_valid }
  end
end