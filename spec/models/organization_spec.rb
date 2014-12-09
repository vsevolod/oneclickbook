require 'rails_helper'

RSpec.describe Organization, :type => :model do

  let(:organization){ build(:organization) }

  describe 'associations' do
    it{ should have_many(:users)}
  end

  describe 'validations' do

    it{ should validate_presence_of :name }
    it{ should validate_uniqueness_of :subdomain }
    it{ should validate_presence_of :subdomain }

  end

end
