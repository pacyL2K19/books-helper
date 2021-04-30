require 'rails_helper'

RSpec.describe Following, type: :model do
  describe 'following Associations' do
    it { should belong_to(:follower) }
    it { should belong_to(:followed) }
  end

  describe 'Attributes Validation' do
    user_one = User.create(username: 'Paci',
                           fullname: 'Plic')
    following = user_one.followings.new(followed_id: nil)

    it 'should invalidate the followed_id of nil as value' do
      expect(following).to_not be_valid
    end
  end
end
