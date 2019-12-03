require 'rails_helper'

RSpec.describe Post, :type => :model do
  it "is valid with valid attributes" do
    expect(Post.new).to be_valid
  end

  it "should return valid string for method upcase_title" do
    post = Post.new({"id"=>152, "title"=>"Post 0", "description"=>"Esse é o post 0 post 0 post 0 post 0 post 0 post 0 post 0", "created_at"=>"2019-11-29T12:11:53.162Z", "updated_at"=>"2019-11-29T12:11:53.162Z"})
    expect(post.upcase_title()).to eq "POST 0"
  end
      
  it "should return valid string for method truncated_desc" do
    post = Post.new({"id"=>152, "title"=>"Post 0", "description"=>"Esse é o post 0 post 0 post 0 post 0 post 0 post 0 post 0", "created_at"=>"2019-11-29T12:11:53.162Z", "updated_at"=>"2019-11-29T12:11:53.162Z"})
    expect(post.truncated_desc(30)).to eq "Esse é o post 0 post 0 post..."
  end
      
  it "should return valid string for method create_date" do
    post = Post.new({"id"=>152, "title"=>"Post 0", "description"=>"Esse é o post 0 post 0 post 0 post 0 post 0 post 0 post 0", "created_at"=>"2019-11-29T12:11:53.162Z", "updated_at"=>"2019-11-29T12:11:53.162Z"})
    expect(post.create_date()).to eq "29/11/19"
  end
      
end
                    