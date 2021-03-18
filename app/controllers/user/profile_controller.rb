class User::ProfileController < UserController

    def show
        @user = current_user
    end
end