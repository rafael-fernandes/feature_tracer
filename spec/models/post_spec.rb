require 'rails_helper'

RSpec.describe Post, :type => :model do
  it "is valid with valid attributes" do
    expect(Post.new).to be_valid
  end

  it "should return valid string for method truncated_desc" do
    post = Post.new({"id"=>144, "title"=>"Post 0", "description"=>"Esse é o post 0 post 0 post 0 post 0 post 0 post 0 post 0", "created_at"=>"2019-11-29T01:48:25.629Z", "updated_at"=>"2019-11-29T01:48:25.629Z"})
    expect(post.truncated_desc(30)).to eq "Esse é o post 0 post 0 post..."
  end
      
  it "should return valid string for method create_date" do
    post = Post.new({"id"=>144, "title"=>"Post 0", "description"=>"Esse é o post 0 post 0 post 0 post 0 post 0 post 0 post 0", "created_at"=>"2019-11-29T01:48:25.629Z", "updated_at"=>"2019-11-29T01:48:25.629Z"})
    expect(post.create_date()).to eq "29/11/19"
  end
      
  it "should return valid string for method truncated_desc" do
    post = Post.new({"id"=>145, "title"=>"Post 1", "description"=>"Esse é o post 1 post 1 post 1 post 1 post 1 post 1 post 1", "created_at"=>"2019-11-29T01:48:25.631Z", "updated_at"=>"2019-11-29T01:48:25.631Z"})
    expect(post.truncated_desc(30)).to eq "Esse é o post 1 post 1 post..."
  end
      
  it "should return valid string for method create_date" do
    post = Post.new({"id"=>145, "title"=>"Post 1", "description"=>"Esse é o post 1 post 1 post 1 post 1 post 1 post 1 post 1", "created_at"=>"2019-11-29T01:48:25.631Z", "updated_at"=>"2019-11-29T01:48:25.631Z"})
    expect(post.create_date()).to eq "29/11/19"
  end
      
end
                    