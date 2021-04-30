require 'rails_helper'

RSpec.describe Opinion, type: :model do
  describe 'opinion Association' do
    it { should belong_to(:author) }
  end
  describe 'Attributes Validation' do
    # user_one = User.create(username: 'Paci',
    #                        fullname: 'Plic')
    opinion = Opinion.new(text: nil)

    it 'should invalidate opinion with nil as value' do
      expect(opinion).to_not be_valid
    end
  end
end
