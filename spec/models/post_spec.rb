require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is valid with valid attributes' do
    post = Post.new(title: "Sample Title", body: "Sample Body")
    expect(post).to be_valid
  end

  it 'is not valid without a title' do
    post = Post.new(body: "Sample Body")
    expect(post).to_not be_valid
  end

  it 'is not valid without a body' do
    post = Post.new(title: "Sample Title")
    expect(post).to_not be_valid
  end
end