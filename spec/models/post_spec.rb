require 'rails_helper'

RSpec.describe Post, :type => :model do
  it "is valid with valid attributes" do
    expect(Post.new).to be_valid
  end

  it "should return valid string for method upcase_title" do
    post = Post.new({"id"=>154, "title"=>"Post 0", "description"=>"Esse é o post 0 post 0 post 0 post 0 post 0 post 0 post 0", "created_at"=>"2019-12-03T17:03:15.881Z", "updated_at"=>"2019-12-03T17:03:15.881Z"})
    expect(post.upcase_title()).to eq "POST 0"
  end
      
  it "should return valid string for method truncated_desc" do
    post = Post.new({"id"=>154, "title"=>"Post 0", "description"=>"Esse é o post 0 post 0 post 0 post 0 post 0 post 0 post 0", "created_at"=>"2019-12-03T17:03:15.881Z", "updated_at"=>"2019-12-03T17:03:15.881Z"})
    expect(post.truncated_desc(30)).to eq "Esse é o post 0 post 0 post..."
  end
      
  it "should return valid string for method create_date" do
    post = Post.new({"id"=>154, "title"=>"Post 0", "description"=>"Esse é o post 0 post 0 post 0 post 0 post 0 post 0 post 0", "created_at"=>"2019-12-03T17:03:15.881Z", "updated_at"=>"2019-12-03T17:03:15.881Z"})
    expect(post.create_date()).to eq "03/12/19"
  end
      
  it "should return valid string for method upcase_title" do
    post = Post.new({"id"=>155, "title"=>"Post 1", "description"=>"Esse é o post 1 post 1 post 1 post 1 post 1 post 1 post 1", "created_at"=>"2019-12-03T17:03:15.885Z", "updated_at"=>"2019-12-03T17:03:15.885Z"})
    expect(post.upcase_title()).to eq "POST 1"
  end
      
  it "should return valid string for method truncated_desc" do
    post = Post.new({"id"=>155, "title"=>"Post 1", "description"=>"Esse é o post 1 post 1 post 1 post 1 post 1 post 1 post 1", "created_at"=>"2019-12-03T17:03:15.885Z", "updated_at"=>"2019-12-03T17:03:15.885Z"})
    expect(post.truncated_desc(30)).to eq "Esse é o post 1 post 1 post..."
  end
      
  it "should return valid string for method create_date" do
    post = Post.new({"id"=>155, "title"=>"Post 1", "description"=>"Esse é o post 1 post 1 post 1 post 1 post 1 post 1 post 1", "created_at"=>"2019-12-03T17:03:15.885Z", "updated_at"=>"2019-12-03T17:03:15.885Z"})
    expect(post.create_date()).to eq "03/12/19"
  end
      
end
                    