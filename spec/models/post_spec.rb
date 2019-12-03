require 'rails_helper'

RSpec.describe Post, :type => :model do
  let(:post) { Post.new({"id"=>168, "title"=>"Post 0", "description"=>"Esse é o post 0 post 0 post 0 post 0 post 0 post 0 post 0", "created_at"=>"2019-12-03T21:12:41.900Z", "updated_at"=>"2019-12-03T21:12:41.900Z"}) }

  it "is valid with valid attributes" do
    expect(post).to be_valid
  end

  describe '#upcase_title' do
    it "should return valid string for method upcase_title" do
      expect(post.upcase_title()).to eq "POST 0"
    end
  end
      
  describe '#truncated_desc' do
    it "should return valid string for method truncated_desc" do
      expect(post.truncated_desc(30)).to eq "Esse é o post 0 post 0 post..."
    end
  end
      
  describe '#create_date' do
    it "should return valid string for method create_date" do
      expect(post.create_date()).to eq "03/12/19"
    end
  end
      
end
                    