FactoryBot.define do
    factory :user do
        name { "Leo" }
        email { "user@user.com" }
        phone { "9999999999" }
        avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/download_foto_leo_JPG.jpg'), 'image/jpg') }
        password { "123456" }
    end
end
