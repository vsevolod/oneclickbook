require 'rails_helper'

RSpec.describe User, :type => :model do

  let(:user){ FactoryGirl.build(:user) }

  describe 'associations' do
    it{ should belong_to(:organization)}
  end

  describe 'validations' do

    it{ should_not validate_presence_of :email}
    it{ should_not validate_presence_of :organization_id}
    it{ should     validate_presence_of :phone}
    it{ should     validate_presence_of :password}
    it{ should     validate_confirmation_of :password}
    it{ should     validate_uniqueness_of :phone} # with scope organization_id
    it{ expect(user).to be_valid }

  end

end
