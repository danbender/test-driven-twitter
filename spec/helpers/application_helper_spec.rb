require 'spec_helper'

describe ApplicationHelper do
  describe 'full_title' do
    it 'includes the page title' do
      expect(full_title('foo')).to match(/foo/)
    end

    it 'includes the base title' do
      expect(full_title('foo')).to match(/^TDD Twitter/)
    end

    it 'does not have a pipe for home' do
      expect(full_title('')).not_to match(/\|/)
    end
  end
end