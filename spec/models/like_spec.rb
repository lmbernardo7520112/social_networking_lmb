require 'rails_helper'

RSpec.describe Subscription, type: :model do
  it "user likes a post" do

    andrew = FactoryBot.create(:user)
    jorge = FactoryBot.create(:user)
    matt = FactoryBot.create(:user)

    post = FactoryBot.create(:post, user: andrew)

    Like.create(user: jorge, post: post)

    expect(post.likes.count).to eql 1
    expect(post.likes.first.user).to eql jorge

    Like.create(user: matt, post: post)
    expect(post.likes.count).to eql 2
    expect(post.likes.last.user).to eql matt

    Like.find_by(post: post, user: jorge).destroy
    expect(post.likes.count).to eql 1
    expect(post.likes.last.user).to eql matt

   
   
    


  end
  
end
