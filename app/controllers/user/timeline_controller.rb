class User::TimelineController < UserController

    def index
        @post = Post.where(user_id: current_user.following.pluck(:id)).order(created_at: :desc)
    end
end