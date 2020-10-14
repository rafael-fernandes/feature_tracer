require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { create(:post) } 
  it { should validate_presence_of(:title) }

  describe '#upcase_title' do
    it 'should' do
      expect(post.upcase_title()).to eq "POST 0"
    end
  end

  describe '#truncated_desc' do
    it 'should' do
      expect(post.truncated_desc(30)).to eq "Esse é o post 0 post 0 post..."
    end
  end

  describe '#create_date' do
    it 'should' do
      expect(post.create_date()).to eq "14/10/20"
    end
  end
end
