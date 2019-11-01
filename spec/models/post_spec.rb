require 'rails_helper'

RSpec.describe Post, :type => :model do
  it "is valid with valid attributes" do
    expect(Post.new).to be_valid
  end

  it "it should return a string with same size as parameter" do
    expect(args[0]).to eq length(string)
  end
end
