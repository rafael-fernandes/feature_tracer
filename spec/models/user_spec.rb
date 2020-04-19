require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) { User.create({email: 'nnmarques97@gmail.com',password:  '123456'}) }

  it "is valid with valid attributes" do
    expect(user).to be_valid
  end

  describe '#find_by_email_address' do
    before() do
      User.create({email: 'nnmarques97@gmail.com',password:  '123456'})
    end
    it "should return valid string for method find_by_email_address" do
      expect(User.find_by_email_address("nnmarques97@gmail.com").email).to eq "nnmarques97@gmail.com"
    end

    it 'should receive an email as argument' do
      expect(User).to receive(:find_by_email_address).with(an_instance_of(String))
      User.find_by_email_address("nnmarques97@gmail.com")
    end
  end
      
end
                    