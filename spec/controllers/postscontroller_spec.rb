require 'rails_helper'

RSpec.describe PostsController, :type => :controller do
  it "is valid with valid attributes" do
    expect(PostsController.new).to be_valid
  end

  it "should return valid string for method index" do
    postscontroller = PostsController.new()
    expect(postscontroller.index()).to eq "#<Post::ActiveRecord_Relation:0x00007fdb6a44d598>"
  end
      
end
                    