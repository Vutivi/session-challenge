module UsersHelper
    def set_all_users
        User.all.order(:login).page params[:page]
    end
end
