require 'rails_helper'

RSpec.describe Subscription, type: :model do
  it "user can follow another user" do
   
    pedro = FactoryBot.create(:user)
    mario = FactoryBot.create(:user)

    Subscription.create(followed: mario, followed_by: pedro)

    expect(mario.followers.count).to eql 1
    expect(mario.followers).to include pedro

    expect(pedro.following.count).to eql 1
    expect(pedro.following).to include mario

    expect(mario.following.count).to eql 0
    expect(mario.following).to_not include pedro

    expect(pedro.followers.count).to eql 0
    expect(pedro.followers).to_not include mario

    donald = FactoryBot.create(:user)

    Subscription.create(followed: mario, followed_by: donald)

    expect(mario.followers.count).to eql 2
    expect(mario.followers).to include donald


    expect(donald.following.count).to eql 1
    expect(donald.following).to include mario
    


  end
  
end
