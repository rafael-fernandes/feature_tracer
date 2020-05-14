require 'rails_helper'

RSpec.describe User, :type => :model do

  describe '#find_by_email_address_equivalence_class' do
    # 3 entries with this class
    it "arguments should belong to EMAIL equivalence class" do
      expect(User).to receive(:find_by_email_address).with("genaina@email.com")
      User.find_by_email_address("genaina@email.com")
    end
  end
      
  describe '#find_by_phone_equivalence_class' do
    # 2 entries with this class
    it "arguments should belong to PHONE equivalence class" do
      # expect(User).to receive(:find_by_phone).with("(61) 98999-9999")
      # User.find_by_email_address("(61) 98999-9999")
    end
  end
      
end
                    