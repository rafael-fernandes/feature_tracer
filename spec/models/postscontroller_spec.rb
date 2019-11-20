require 'rails_helper'

RSpec.describe PostsController, :type => :controller do
  it "is valid with valid attributes" do
    expect(PostsController.new).to be_valid
  end
end
