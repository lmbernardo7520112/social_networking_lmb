require 'rails_helper'

RSpec.describe User, type: :model do
  it "user is valid" do
    @user = User.new(
      name: "Leo",
      email: "Leo@test.com",
      phone: "1111111111",
      avatar: Rack::Test::UploadedFile.new(Rails.root.join("spec", "support", "download_foto_leo_JPG.jpg"), "image/jpg"), #fixture_file_upload  doesn't work!
      password: "123456"
      )

      expect(@user).to be_valid
  end

  it "user is not valid" do
    @user = User.new(
      name: "Leo",
      email: "Leo@test.com",
      phone: "1111111111",
      #avatar: Rack::Test::UploadedFile.new(Rails.root.join("spec", "support", "download_foto_leo_JPG.jpg"), "image/jpg"), #fixture_file_upload  doesn't work!
      password: "123456"
      )

      expect(@user).to_not be_valid
  end

  it "user should have a name" do
    @user = User.new(
      #name: "Leo",
      email: "Leo@test.com",
      phone: "1111111111",
      avatar: Rack::Test::UploadedFile.new(Rails.root.join("spec", "support", "download_foto_leo_JPG.jpg"), "image/jpg"), #fixture_file_upload  doesn't work!
      password: "123456"
      )

      expect(@user).to_not be_valid
  end
end
